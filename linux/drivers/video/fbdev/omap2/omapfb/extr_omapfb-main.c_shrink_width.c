
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {unsigned long xres_virtual; unsigned long yres_virtual; int bits_per_pixel; unsigned long xres; } ;


 int DBG (char*) ;
 unsigned long OMAPFB_PLANE_XRES_MIN ;

__attribute__((used)) static void shrink_width(unsigned long max_frame_size,
  struct fb_var_screeninfo *var)
{
 DBG("can't fit FB into memory, reducing x\n");
 var->xres_virtual = max_frame_size / var->yres_virtual /
  (var->bits_per_pixel >> 3);

 if (var->xres_virtual < OMAPFB_PLANE_XRES_MIN)
  var->xres_virtual = OMAPFB_PLANE_XRES_MIN;

 if (var->xres > var->xres_virtual)
  var->xres = var->xres_virtual;
}
