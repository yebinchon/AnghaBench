
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int xres; int bits_per_pixel; } ;



__attribute__((used)) static inline int d_pitch(struct fb_var_screeninfo *var)
{
 return var->xres * var->bits_per_pixel / 8;
}
