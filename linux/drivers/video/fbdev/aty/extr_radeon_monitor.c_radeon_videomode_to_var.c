
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {int vmode; int sync; int vsync_len; int hsync_len; int lower_margin; int upper_margin; int right_margin; int left_margin; int pixclock; int yres; int xres; } ;
struct fb_var_screeninfo {int vmode; int sync; int vsync_len; int hsync_len; int lower_margin; int upper_margin; int right_margin; int left_margin; int pixclock; scalar_t__ yoffset; scalar_t__ xoffset; int yres_virtual; int xres_virtual; int yres; int xres; } ;



__attribute__((used)) static void radeon_videomode_to_var(struct fb_var_screeninfo *var,
        const struct fb_videomode *mode)
{
 var->xres = mode->xres;
 var->yres = mode->yres;
 var->xres_virtual = mode->xres;
 var->yres_virtual = mode->yres;
 var->xoffset = 0;
 var->yoffset = 0;
 var->pixclock = mode->pixclock;
 var->left_margin = mode->left_margin;
 var->right_margin = mode->right_margin;
 var->upper_margin = mode->upper_margin;
 var->lower_margin = mode->lower_margin;
 var->hsync_len = mode->hsync_len;
 var->vsync_len = mode->vsync_len;
 var->sync = mode->sync;
 var->vmode = mode->vmode;
}
