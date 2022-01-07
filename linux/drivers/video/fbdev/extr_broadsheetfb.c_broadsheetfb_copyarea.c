
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct broadsheetfb_par* par; } ;
struct fb_copyarea {int dummy; } ;
struct broadsheetfb_par {int dummy; } ;


 int broadsheetfb_dpy_update (struct broadsheetfb_par*) ;
 int sys_copyarea (struct fb_info*,struct fb_copyarea const*) ;

__attribute__((used)) static void broadsheetfb_copyarea(struct fb_info *info,
       const struct fb_copyarea *area)
{
 struct broadsheetfb_par *par = info->par;

 sys_copyarea(info, area);

 broadsheetfb_dpy_update(par);
}
