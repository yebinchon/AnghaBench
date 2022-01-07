
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmpfb_info {int fb_size; } ;
struct fb_var_screeninfo {int bits_per_pixel; int xoffset; int xres; int xres_virtual; int yoffset; int yres; int yres_virtual; } ;
struct fb_info {struct mmpfb_info* par; } ;


 int EINVAL ;

__attribute__((used)) static int mmpfb_check_var(struct fb_var_screeninfo *var,
  struct fb_info *info)
{
 struct mmpfb_info *fbi = info->par;

 if (var->bits_per_pixel == 8)
  return -EINVAL;



 if (var->xoffset + var->xres > var->xres_virtual)
  return -EINVAL;
 if (var->yoffset + var->yres > var->yres_virtual)
  return -EINVAL;




 if (var->xres_virtual * var->yres_virtual *
   (var->bits_per_pixel >> 3) > fbi->fb_size)
  return -EINVAL;

 return 0;
}
