
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {struct dlfb_data* par; } ;
struct dlfb_data {int dummy; } ;


 int EINVAL ;
 int dlfb_is_valid_mode (struct fb_videomode*,struct dlfb_data*) ;
 int dlfb_var_color_format (struct fb_var_screeninfo*) ;
 int fb_var_to_videomode (struct fb_videomode*,struct fb_var_screeninfo*) ;

__attribute__((used)) static int dlfb_ops_check_var(struct fb_var_screeninfo *var,
    struct fb_info *info)
{
 struct fb_videomode mode;
 struct dlfb_data *dlfb = info->par;


 dlfb_var_color_format(var);

 fb_var_to_videomode(&mode, var);

 if (!dlfb_is_valid_mode(&mode, dlfb))
  return -EINVAL;

 return 0;
}
