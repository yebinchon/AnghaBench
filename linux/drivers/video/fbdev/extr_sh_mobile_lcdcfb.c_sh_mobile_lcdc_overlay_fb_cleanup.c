
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_overlay {struct fb_info* info; } ;
struct fb_info {int * device; } ;


 int framebuffer_release (struct fb_info*) ;

__attribute__((used)) static void
sh_mobile_lcdc_overlay_fb_cleanup(struct sh_mobile_lcdc_overlay *ovl)
{
 struct fb_info *info = ovl->info;

 if (info == ((void*)0) || info->device == ((void*)0))
  return;

 framebuffer_release(info);
}
