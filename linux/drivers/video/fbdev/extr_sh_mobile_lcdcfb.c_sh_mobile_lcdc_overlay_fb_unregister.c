
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_overlay {struct fb_info* info; } ;
struct fb_info {int * dev; } ;


 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void
sh_mobile_lcdc_overlay_fb_unregister(struct sh_mobile_lcdc_overlay *ovl)
{
 struct fb_info *info = ovl->info;

 if (info == ((void*)0) || info->dev == ((void*)0))
  return;

 unregister_framebuffer(ovl->info);
}
