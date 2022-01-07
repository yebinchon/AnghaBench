
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int deferred_work; struct fb_deferred_io* fbdefio; } ;
struct fb_deferred_io {int delay; } ;


 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void sh_mobile_lcdc_deferred_io_touch(struct fb_info *info)
{
 struct fb_deferred_io *fbdefio = info->fbdefio;

 if (fbdefio)
  schedule_delayed_work(&info->deferred_work, fbdefio->delay);
}
