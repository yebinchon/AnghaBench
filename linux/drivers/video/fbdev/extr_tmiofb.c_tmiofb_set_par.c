
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_videomode {int xres; } ;
struct fb_var_screeninfo {int bits_per_pixel; } ;
struct TYPE_2__ {int line_length; } ;
struct fb_info {int device; struct fb_videomode* mode; TYPE_1__ fix; struct fb_var_screeninfo var; } ;


 int EINVAL ;
 int tmiofb_clearscreen (struct fb_info*) ;
 struct fb_videomode* tmiofb_find_mode (struct fb_info*,struct fb_var_screeninfo*) ;
 int tmiofb_hw_mode (int ) ;
 int to_platform_device (int ) ;

__attribute__((used)) static int tmiofb_set_par(struct fb_info *info)
{
 struct fb_var_screeninfo *var = &info->var;
 struct fb_videomode *mode;

 mode = tmiofb_find_mode(info, var);
 if (!mode)
  return -EINVAL;

 info->mode = mode;
 info->fix.line_length = info->mode->xres *
   var->bits_per_pixel / 8;

 tmiofb_hw_mode(to_platform_device(info->device));
 tmiofb_clearscreen(info);
 return 0;
}
