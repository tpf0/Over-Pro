#import <UIKit.h>
#import <substrate.h>

// Enable Pro version for Over app
// com.gopotluck.over
// maybe need Flex becuase some code written in swift

%hook Over.OVStoreServicelmpl
-(bool)isProSubscriber {
  return TRUE;
}
%end

%hook Over.ProSubscriptionVerifier
+(bool)isProSubscriber {
  return TRUE;
}
%end

%hook Over.CanvasFontFamily
-(void)setIsProPreviewFont:(bool)arg1 {
  arg1 = TRUE;
  %orig(arg1);
}
}

-(bool)isProPreviewFont {
  return TRUE;
}
%end

%hook OVImagePickerResults
-(bool)isProImage {
  return TRUE;
}
}

-(void)setIsProImage:(bool)arg1 {
  arg1 = YES;
  %orig(arg1);
}
}
%end

%hook OVRFoucusedToolConfiguration
-(bool)isProSubscriber {
  return YES;
}
}

-(void)setIsProSubscriber:(bool)arg1 {
  arg1 = YES;
  %orig(arg1);
}
}
%end 
