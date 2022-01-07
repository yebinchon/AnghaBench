
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssd1307fb_par {int dummy; } ;
struct fb_info {struct ssd1307fb_par* par; } ;
struct fb_copyarea {int dummy; } ;


 int ssd1307fb_update_display (struct ssd1307fb_par*) ;
 int sys_copyarea (struct fb_info*,struct fb_copyarea const*) ;

__attribute__((used)) static void ssd1307fb_copyarea(struct fb_info *info, const struct fb_copyarea *area)
{
 struct ssd1307fb_par *par = info->par;
 sys_copyarea(info, area);
 ssd1307fb_update_display(par);
}
