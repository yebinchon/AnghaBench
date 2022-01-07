
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {int yres; int xres; } ;
struct fb_var_screeninfo {int yres; int xres; } ;



__attribute__((used)) static int radeon_compare_modes(const struct fb_var_screeninfo *var,
    const struct fb_videomode *mode)
{
 int distance = 0;

 distance = mode->yres - var->yres;
 distance += (mode->xres - var->xres)/2;
 return distance;
}
