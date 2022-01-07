
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {long xres; long yres; scalar_t__ pixclock; scalar_t__ hsync_len; scalar_t__ vsync_len; int vmode; unsigned int left_margin; unsigned int right_margin; unsigned int upper_margin; unsigned int lower_margin; } ;
struct fb_var_screeninfo {long xres; long yres; scalar_t__ pixclock; scalar_t__ hsync_len; scalar_t__ vsync_len; int vmode; long left_margin; long right_margin; long upper_margin; long lower_margin; } ;


 int FB_VMODE_MASK ;
 long max (long,unsigned int) ;

__attribute__((used)) static int ps3fb_cmp_mode(const struct fb_videomode *vmode,
     const struct fb_var_screeninfo *var)
{
 long xres, yres, left_margin, right_margin, upper_margin, lower_margin;
 long dx, dy;


 if (var->xres > vmode->xres || var->yres > vmode->yres ||
     var->pixclock > vmode->pixclock ||
     var->hsync_len > vmode->hsync_len ||
     var->vsync_len > vmode->vsync_len)
  return -1;


 if ((var->vmode & FB_VMODE_MASK) != vmode->vmode)
  return -1;


 xres = max(var->xres, 1U);
 yres = max(var->yres, 1U);


 left_margin = max(var->left_margin, vmode->left_margin);
 right_margin = max(var->right_margin, vmode->right_margin);
 upper_margin = max(var->upper_margin, vmode->upper_margin);
 lower_margin = max(var->lower_margin, vmode->lower_margin);


 dx = ((long)vmode->left_margin + (long)vmode->xres +
       (long)vmode->right_margin) -
      (left_margin + xres + right_margin);
 if (dx < 0)
  return -1;

 dy = ((long)vmode->upper_margin + (long)vmode->yres +
       (long)vmode->lower_margin) -
      (upper_margin + yres + lower_margin);
 if (dy < 0)
  return -1;


 if (!dx && !dy)
  return 0;


 return (vmode->xres - xres) * (vmode->yres - yres);
}
