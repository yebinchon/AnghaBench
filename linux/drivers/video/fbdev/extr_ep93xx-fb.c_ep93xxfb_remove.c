
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct fb_info {int cmap; struct ep93xx_fbi* par; } ;
struct ep93xx_fbi {TYPE_1__* mach_info; int clk; } ;
struct TYPE_2__ {int (* teardown ) (struct platform_device*) ;} ;


 int clk_disable (int ) ;
 int ep93xxfb_dealloc_videomem (struct fb_info*) ;
 int fb_dealloc_cmap (int *) ;
 int kfree (struct fb_info*) ;
 struct fb_info* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct platform_device*) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int ep93xxfb_remove(struct platform_device *pdev)
{
 struct fb_info *info = platform_get_drvdata(pdev);
 struct ep93xx_fbi *fbi = info->par;

 unregister_framebuffer(info);
 clk_disable(fbi->clk);
 ep93xxfb_dealloc_videomem(info);
 fb_dealloc_cmap(&info->cmap);

 if (fbi->mach_info->teardown)
  fbi->mach_info->teardown(pdev);

 kfree(info);

 return 0;
}
