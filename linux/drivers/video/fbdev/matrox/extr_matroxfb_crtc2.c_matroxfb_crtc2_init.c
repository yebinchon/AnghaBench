
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int crtc2 ;
 scalar_t__ fb_get_options (char*,int *) ;
 int matroxfb_register_driver (int *) ;

__attribute__((used)) static int matroxfb_crtc2_init(void) {
 if (fb_get_options("matrox_crtc2fb", ((void*)0)))
  return -ENODEV;

 matroxfb_register_driver(&crtc2);
 return 0;
}
