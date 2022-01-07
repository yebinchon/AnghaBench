
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {int sync; int vsync_len; int lower_margin; int upper_margin; int hsync_len; int right_margin; int left_margin; int yres; int xres; int pixclock; } ;
struct fb_var_screeninfo {int sync; int vsync_len; int lower_margin; int upper_margin; int hsync_len; int right_margin; int left_margin; int yres; int xres; int pixclock; } ;



void viafb_fill_var_timing_info(struct fb_var_screeninfo *var,
 const struct fb_videomode *mode)
{
 var->pixclock = mode->pixclock;
 var->xres = mode->xres;
 var->yres = mode->yres;
 var->left_margin = mode->left_margin;
 var->right_margin = mode->right_margin;
 var->hsync_len = mode->hsync_len;
 var->upper_margin = mode->upper_margin;
 var->lower_margin = mode->lower_margin;
 var->vsync_len = mode->vsync_len;
 var->sync = mode->sync;
}
