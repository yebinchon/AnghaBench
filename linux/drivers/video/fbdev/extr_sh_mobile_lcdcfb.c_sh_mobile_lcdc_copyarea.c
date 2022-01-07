
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_copyarea {int dummy; } ;


 int sh_mobile_lcdc_deferred_io_touch (struct fb_info*) ;
 int sys_copyarea (struct fb_info*,struct fb_copyarea const*) ;

__attribute__((used)) static void sh_mobile_lcdc_copyarea(struct fb_info *info,
        const struct fb_copyarea *area)
{
 sys_copyarea(info, area);
 sh_mobile_lcdc_deferred_io_touch(info);
}
