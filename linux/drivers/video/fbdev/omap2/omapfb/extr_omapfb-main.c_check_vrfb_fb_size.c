
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int bits_per_pixel; int yres_virtual; int xres_virtual; } ;


 int EINVAL ;
 unsigned long omap_vrfb_min_phys_size (int ,int ,int) ;

__attribute__((used)) static int check_vrfb_fb_size(unsigned long region_size,
  const struct fb_var_screeninfo *var)
{
 unsigned long min_phys_size = omap_vrfb_min_phys_size(var->xres_virtual,
  var->yres_virtual, var->bits_per_pixel >> 3);

 return min_phys_size > region_size ? -EINVAL : 0;
}
