
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int xres; int left_margin; int right_margin; int hsync_len; int yres; int upper_margin; int lower_margin; int vsync_len; int pixclock; } ;



__attribute__((used)) static __inline__ int var_to_refresh(const struct fb_var_screeninfo *var)
{
 int xtot = var->xres + var->left_margin + var->right_margin +
     var->hsync_len;
 int ytot = var->yres + var->upper_margin + var->lower_margin +
     var->vsync_len;

 return (1000000000 / var->pixclock * 1000 + 500) / xtot / ytot;
}
