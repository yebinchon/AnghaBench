
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int xres; int yres; } ;
struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; } ;


 int EINVAL ;
 int fb_var_to_videomode (struct fb_videomode*,struct fb_var_screeninfo*) ;
 int ufx_is_valid_mode (struct fb_videomode*,struct fb_info*) ;
 int ufx_var_color_format (struct fb_var_screeninfo*) ;

__attribute__((used)) static int ufx_ops_check_var(struct fb_var_screeninfo *var,
    struct fb_info *info)
{
 struct fb_videomode mode;


 if ((var->xres * var->yres * 2) > info->fix.smem_len)
  return -EINVAL;


 ufx_var_color_format(var);

 fb_var_to_videomode(&mode, var);

 if (!ufx_is_valid_mode(&mode, info))
  return -EINVAL;

 return 0;
}
