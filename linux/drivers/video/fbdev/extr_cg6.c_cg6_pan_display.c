
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {scalar_t__ vmode; scalar_t__ yoffset; scalar_t__ xoffset; } ;
struct fb_info {scalar_t__ par; } ;
struct cg6_par {int dummy; } ;


 int EINVAL ;
 int cg6_switch_from_graph (struct cg6_par*) ;

__attribute__((used)) static int cg6_pan_display(struct fb_var_screeninfo *var, struct fb_info *info)
{
 struct cg6_par *par = (struct cg6_par *)info->par;




 cg6_switch_from_graph(par);

 if (var->xoffset || var->yoffset || var->vmode)
  return -EINVAL;
 return 0;
}
