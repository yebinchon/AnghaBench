
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh7760fb_par {scalar_t__ irq; TYPE_1__* ioarea; int base; int vsync; } ;
struct platform_device {int dummy; } ;
struct fb_info {int cmap; struct sh7760fb_par* par; } ;
struct TYPE_2__ {int start; } ;


 int FB_BLANK_POWERDOWN ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int free_irq (scalar_t__,int *) ;
 int iounmap (int ) ;
 struct fb_info* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,int ) ;
 int resource_size (TYPE_1__*) ;
 int sh7760fb_blank (int ,struct fb_info*) ;
 int sh7760fb_free_mem (struct fb_info*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int sh7760fb_remove(struct platform_device *dev)
{
 struct fb_info *info = platform_get_drvdata(dev);
 struct sh7760fb_par *par = info->par;

 sh7760fb_blank(FB_BLANK_POWERDOWN, info);
 unregister_framebuffer(info);
 fb_dealloc_cmap(&info->cmap);
 sh7760fb_free_mem(info);
 if (par->irq >= 0)
  free_irq(par->irq, &par->vsync);
 iounmap(par->base);
 release_mem_region(par->ioarea->start, resource_size(par->ioarea));
 framebuffer_release(info);

 return 0;
}
