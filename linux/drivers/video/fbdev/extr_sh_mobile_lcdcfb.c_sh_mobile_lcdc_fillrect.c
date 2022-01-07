
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_fillrect {int dummy; } ;


 int sh_mobile_lcdc_deferred_io_touch (struct fb_info*) ;
 int sys_fillrect (struct fb_info*,struct fb_fillrect const*) ;

__attribute__((used)) static void sh_mobile_lcdc_fillrect(struct fb_info *info,
        const struct fb_fillrect *rect)
{
 sys_fillrect(info, rect);
 sh_mobile_lcdc_deferred_io_touch(info);
}
