
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;
struct imxfb_info {int regs; int map_dma; int map_size; int pdev; } ;
struct imx_fb_platform_data {int (* exit ) (int ) ;} ;
struct fb_info {int pseudo_palette; int screen_buffer; int cmap; struct imxfb_info* par; } ;


 int IORESOURCE_MEM ;
 struct imx_fb_platform_data* dev_get_platdata (int *) ;
 int dma_free_wc (int *,int ,int ,int ) ;
 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int imxfb_disable_controller (struct imxfb_info*) ;
 int iounmap (int ) ;
 int kfree (int ) ;
 struct fb_info* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 int stub1 (int ) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int imxfb_remove(struct platform_device *pdev)
{
 struct imx_fb_platform_data *pdata;
 struct fb_info *info = platform_get_drvdata(pdev);
 struct imxfb_info *fbi = info->par;
 struct resource *res;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 imxfb_disable_controller(fbi);

 unregister_framebuffer(info);
 fb_dealloc_cmap(&info->cmap);
 pdata = dev_get_platdata(&pdev->dev);
 if (pdata && pdata->exit)
  pdata->exit(fbi->pdev);
 dma_free_wc(&pdev->dev, fbi->map_size, info->screen_buffer,
      fbi->map_dma);
 iounmap(fbi->regs);
 release_mem_region(res->start, resource_size(res));
 kfree(info->pseudo_palette);
 framebuffer_release(info);

 return 0;
}
