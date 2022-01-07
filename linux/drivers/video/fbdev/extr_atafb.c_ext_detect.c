
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int bits_per_pixel; int yres; int xres_virtual; int xres; } ;
struct atafb_par {int dummy; } ;


 struct fb_var_screeninfo* atafb_predefined ;
 int ext_encode_var (struct fb_var_screeninfo*,struct atafb_par*) ;
 int external_depth ;
 int external_xres ;
 int external_xres_virtual ;
 int external_yres ;

__attribute__((used)) static int ext_detect(void)
{
 struct fb_var_screeninfo *myvar = &atafb_predefined[0];
 struct atafb_par dummy_par;

 myvar->xres = external_xres;
 myvar->xres_virtual = external_xres_virtual;
 myvar->yres = external_yres;
 myvar->bits_per_pixel = external_depth;
 ext_encode_var(myvar, &dummy_par);
 return 1;
}
