
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmiofb_par {int ccr; int lcr; } ;
struct platform_device {int dummy; } ;
struct mfd_cell {int (* disable ) (struct platform_device*) ;} ;
struct fb_info {int screen_base; struct tmiofb_par* par; } ;


 int framebuffer_release (struct fb_info*) ;
 int free_irq (int,struct fb_info*) ;
 int iounmap (int ) ;
 struct mfd_cell* mfd_get_cell (struct platform_device*) ;
 struct fb_info* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int stub1 (struct platform_device*) ;
 int tmiofb_hw_stop (struct platform_device*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int tmiofb_remove(struct platform_device *dev)
{
 const struct mfd_cell *cell = mfd_get_cell(dev);
 struct fb_info *info = platform_get_drvdata(dev);
 int irq = platform_get_irq(dev, 0);
 struct tmiofb_par *par;

 if (info) {
  par = info->par;
  unregister_framebuffer(info);

  tmiofb_hw_stop(dev);

  if (cell->disable)
   cell->disable(dev);

  free_irq(irq, info);

  iounmap(info->screen_base);
  iounmap(par->lcr);
  iounmap(par->ccr);

  framebuffer_release(info);
 }

 return 0;
}
