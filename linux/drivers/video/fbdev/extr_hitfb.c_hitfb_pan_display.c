
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_var_screeninfo {int xoffset; int yoffset; } ;
struct TYPE_2__ {int line_length; } ;
struct fb_info {TYPE_1__ fix; } ;


 int EINVAL ;
 int HD64461_LCDCBAR ;
 int fb_writew (int,int ) ;

__attribute__((used)) static int hitfb_pan_display(struct fb_var_screeninfo *var,
        struct fb_info *info)
{
 int xoffset = var->xoffset;
 int yoffset = var->yoffset;

 if (xoffset != 0)
  return -EINVAL;

 fb_writew((yoffset*info->fix.line_length)>>10, HD64461_LCDCBAR);

 return 0;
}
