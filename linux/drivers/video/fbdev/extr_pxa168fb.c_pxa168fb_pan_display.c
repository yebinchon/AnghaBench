
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int yoffset; int xoffset; } ;
struct fb_info {int dummy; } ;


 int set_graphics_start (struct fb_info*,int ,int ) ;

__attribute__((used)) static int pxa168fb_pan_display(struct fb_var_screeninfo *var,
    struct fb_info *info)
{
 set_graphics_start(info, var->xoffset, var->yoffset);

 return 0;
}
