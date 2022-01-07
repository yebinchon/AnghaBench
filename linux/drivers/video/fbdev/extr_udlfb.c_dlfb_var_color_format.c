
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_bitfield {int member_0; int member_1; int member_2; } ;
struct fb_var_screeninfo {int bits_per_pixel; struct fb_bitfield blue; struct fb_bitfield green; struct fb_bitfield red; } ;



__attribute__((used)) static void dlfb_var_color_format(struct fb_var_screeninfo *var)
{
 const struct fb_bitfield red = { 11, 5, 0 };
 const struct fb_bitfield green = { 5, 6, 0 };
 const struct fb_bitfield blue = { 0, 5, 0 };

 var->bits_per_pixel = 16;
 var->red = red;
 var->green = green;
 var->blue = blue;
}
