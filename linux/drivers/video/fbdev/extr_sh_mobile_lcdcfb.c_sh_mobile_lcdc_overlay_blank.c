
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_overlay {int enabled; } ;
struct fb_info {struct sh_mobile_lcdc_overlay* par; } ;


 int sh_mobile_lcdc_overlay_setup (struct sh_mobile_lcdc_overlay*) ;

__attribute__((used)) static int sh_mobile_lcdc_overlay_blank(int blank, struct fb_info *info)
{
 struct sh_mobile_lcdc_overlay *ovl = info->par;

 ovl->enabled = !blank;
 sh_mobile_lcdc_overlay_setup(ovl);




 return 1;
}
