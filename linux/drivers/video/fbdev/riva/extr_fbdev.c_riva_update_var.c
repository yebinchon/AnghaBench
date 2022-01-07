
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {scalar_t__ yres; int vmode; int sync; int vsync_len; int hsync_len; int lower_margin; int upper_margin; int right_margin; int left_margin; int pixclock; int xres; } ;
struct fb_var_screeninfo {scalar_t__ yres; scalar_t__ yres_virtual; int vmode; int sync; int vsync_len; int hsync_len; int lower_margin; int upper_margin; int right_margin; int left_margin; int pixclock; scalar_t__ yoffset; scalar_t__ xoffset; int xres_virtual; int xres; } ;


 int NVTRACE_ENTER () ;
 int NVTRACE_LEAVE () ;

__attribute__((used)) static void riva_update_var(struct fb_var_screeninfo *var,
       const struct fb_videomode *modedb)
{
 NVTRACE_ENTER();
 var->xres = var->xres_virtual = modedb->xres;
 var->yres = modedb->yres;
        if (var->yres_virtual < var->yres)
     var->yres_virtual = var->yres;
        var->xoffset = var->yoffset = 0;
        var->pixclock = modedb->pixclock;
        var->left_margin = modedb->left_margin;
        var->right_margin = modedb->right_margin;
        var->upper_margin = modedb->upper_margin;
        var->lower_margin = modedb->lower_margin;
        var->hsync_len = modedb->hsync_len;
        var->vsync_len = modedb->vsync_len;
        var->sync = modedb->sync;
        var->vmode = modedb->vmode;
 NVTRACE_LEAVE();
}
