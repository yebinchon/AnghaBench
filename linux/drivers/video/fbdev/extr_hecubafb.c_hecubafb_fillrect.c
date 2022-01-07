
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hecubafb_par {int dummy; } ;
struct fb_info {struct hecubafb_par* par; } ;
struct fb_fillrect {int dummy; } ;


 int hecubafb_dpy_update (struct hecubafb_par*) ;
 int sys_fillrect (struct fb_info*,struct fb_fillrect const*) ;

__attribute__((used)) static void hecubafb_fillrect(struct fb_info *info,
       const struct fb_fillrect *rect)
{
 struct hecubafb_par *par = info->par;

 sys_fillrect(info, rect);

 hecubafb_dpy_update(par);
}
