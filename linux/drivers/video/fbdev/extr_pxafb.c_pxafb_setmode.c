
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxafb_mode_info {int depth; int transparency; int cmap_greyscale; int sync; int lower_margin; int upper_margin; int vsync_len; int right_margin; int left_margin; int hsync_len; int pixclock; int bpp; int yres; int xres; } ;
struct TYPE_2__ {int length; } ;
struct fb_var_screeninfo {TYPE_1__ transp; int grayscale; int sync; int lower_margin; int upper_margin; int vsync_len; int right_margin; int left_margin; int hsync_len; int pixclock; int bits_per_pixel; int yres; int xres; } ;


 int pxafb_set_pixfmt (struct fb_var_screeninfo*,int ) ;

__attribute__((used)) static void pxafb_setmode(struct fb_var_screeninfo *var,
     struct pxafb_mode_info *mode)
{
 var->xres = mode->xres;
 var->yres = mode->yres;
 var->bits_per_pixel = mode->bpp;
 var->pixclock = mode->pixclock;
 var->hsync_len = mode->hsync_len;
 var->left_margin = mode->left_margin;
 var->right_margin = mode->right_margin;
 var->vsync_len = mode->vsync_len;
 var->upper_margin = mode->upper_margin;
 var->lower_margin = mode->lower_margin;
 var->sync = mode->sync;
 var->grayscale = mode->cmap_greyscale;
 var->transp.length = mode->transparency;


 pxafb_set_pixfmt(var, mode->depth);
}
