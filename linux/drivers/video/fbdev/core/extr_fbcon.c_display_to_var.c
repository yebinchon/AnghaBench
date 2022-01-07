
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbcon_display {int rotate; int transp; int blue; int green; int red; int width; int height; int accel_flags; int nonstd; int grayscale; int bits_per_pixel; int yres_virtual; int xres_virtual; int mode; } ;
struct fb_var_screeninfo {int rotate; int transp; int blue; int green; int red; int width; int height; int accel_flags; int nonstd; int grayscale; int bits_per_pixel; int yres_virtual; int xres_virtual; } ;


 int fb_videomode_to_var (struct fb_var_screeninfo*,int ) ;

__attribute__((used)) static void display_to_var(struct fb_var_screeninfo *var,
      struct fbcon_display *disp)
{
 fb_videomode_to_var(var, disp->mode);
 var->xres_virtual = disp->xres_virtual;
 var->yres_virtual = disp->yres_virtual;
 var->bits_per_pixel = disp->bits_per_pixel;
 var->grayscale = disp->grayscale;
 var->nonstd = disp->nonstd;
 var->accel_flags = disp->accel_flags;
 var->height = disp->height;
 var->width = disp->width;
 var->red = disp->red;
 var->green = disp->green;
 var->blue = disp->blue;
 var->transp = disp->transp;
 var->rotate = disp->rotate;
}
