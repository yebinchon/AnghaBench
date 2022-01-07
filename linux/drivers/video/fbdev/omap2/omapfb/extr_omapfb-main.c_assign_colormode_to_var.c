
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_colormode {int transp; int blue; int green; int red; int nonstd; int bits_per_pixel; } ;
struct fb_var_screeninfo {int transp; int blue; int green; int red; int nonstd; int bits_per_pixel; } ;



__attribute__((used)) static void assign_colormode_to_var(struct fb_var_screeninfo *var,
  struct omapfb_colormode *color)
{
 var->bits_per_pixel = color->bits_per_pixel;
 var->nonstd = color->nonstd;
 var->red = color->red;
 var->green = color->green;
 var->blue = color->blue;
 var->transp = color->transp;
}
