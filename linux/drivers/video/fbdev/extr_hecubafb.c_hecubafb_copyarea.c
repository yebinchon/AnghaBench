
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hecubafb_par {int dummy; } ;
struct fb_info {struct hecubafb_par* par; } ;
struct fb_copyarea {int dummy; } ;


 int hecubafb_dpy_update (struct hecubafb_par*) ;
 int sys_copyarea (struct fb_info*,struct fb_copyarea const*) ;

__attribute__((used)) static void hecubafb_copyarea(struct fb_info *info,
       const struct fb_copyarea *area)
{
 struct hecubafb_par *par = info->par;

 sys_copyarea(info, area);

 hecubafb_dpy_update(par);
}
