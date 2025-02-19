
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int xres_virtual; int xres; int yres_virtual; int yres; } ;


 int EINVAL ;
 int OMAPFB_PLANE_XRES_MIN ;
 int OMAPFB_PLANE_YRES_MIN ;

__attribute__((used)) static int check_fb_res_bounds(struct fb_var_screeninfo *var)
{
 int xres_min = OMAPFB_PLANE_XRES_MIN;
 int xres_max = 2048;
 int yres_min = OMAPFB_PLANE_YRES_MIN;
 int yres_max = 2048;


 if (var->xres_virtual == 0)
  var->xres_virtual = var->xres;

 if (var->yres_virtual == 0)
  var->yres_virtual = var->yres;

 if (var->xres_virtual < xres_min || var->yres_virtual < yres_min)
  return -EINVAL;

 if (var->xres < xres_min)
  var->xres = xres_min;
 if (var->yres < yres_min)
  var->yres = yres_min;
 if (var->xres > xres_max)
  var->xres = xres_max;
 if (var->yres > yres_max)
  var->yres = yres_max;

 if (var->xres > var->xres_virtual)
  var->xres = var->xres_virtual;
 if (var->yres > var->yres_virtual)
  var->yres = var->yres_virtual;

 return 0;
}
