
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {scalar_t__ vmode; scalar_t__ yoffset; scalar_t__ xoffset; } ;
struct fb_info {int dummy; } ;


 int EINVAL ;
 int leo_switch_from_graph (struct fb_info*) ;

__attribute__((used)) static int leo_pan_display(struct fb_var_screeninfo *var, struct fb_info *info)
{



 leo_switch_from_graph(info);

 if (var->xoffset || var->yoffset || var->vmode)
  return -EINVAL;
 return 0;
}
