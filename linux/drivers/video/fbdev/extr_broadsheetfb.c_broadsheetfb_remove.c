
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct fb_info {scalar_t__ screen_base; int cmap; int dev; struct broadsheetfb_par* par; } ;
struct broadsheetfb_par {TYPE_1__* board; } ;
struct TYPE_2__ {int owner; int (* cleanup ) (struct broadsheetfb_par*) ;} ;


 int dev_attr_loadstore_waveform ;
 int device_remove_file (int ,int *) ;
 int fb_dealloc_cmap (int *) ;
 int fb_deferred_io_cleanup (struct fb_info*) ;
 int framebuffer_release (struct fb_info*) ;
 int module_put (int ) ;
 struct fb_info* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct broadsheetfb_par*) ;
 int unregister_framebuffer (struct fb_info*) ;
 int vfree (void*) ;

__attribute__((used)) static int broadsheetfb_remove(struct platform_device *dev)
{
 struct fb_info *info = platform_get_drvdata(dev);

 if (info) {
  struct broadsheetfb_par *par = info->par;

  device_remove_file(info->dev, &dev_attr_loadstore_waveform);
  unregister_framebuffer(info);
  fb_deferred_io_cleanup(info);
  par->board->cleanup(par);
  fb_dealloc_cmap(&info->cmap);
  vfree((void *)info->screen_base);
  module_put(par->board->owner);
  framebuffer_release(info);
 }
 return 0;
}
