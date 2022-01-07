
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pxa168fb_info {int clk; int dev; scalar_t__ reg_base; struct fb_info* info; } ;
struct platform_device {int dummy; } ;
struct TYPE_3__ {int smem_start; int smem_len; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct fb_info {TYPE_1__ fix; int screen_base; TYPE_2__ cmap; } ;


 unsigned int CFG_GRA_ENA_MASK ;
 unsigned int GRA_FRAME_IRQ0_ENA (int) ;
 scalar_t__ LCD_SPU_DMA_CTRL0 ;
 int PAGE_ALIGN (int ) ;
 scalar_t__ SPU_IRQ_ENA ;
 int clk_disable_unprepare (int ) ;
 int dma_free_wc (int ,int ,int ,int ) ;
 int fb_dealloc_cmap (TYPE_2__*) ;
 int framebuffer_release (struct fb_info*) ;
 struct pxa168fb_info* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 unsigned int readl (scalar_t__) ;
 int unregister_framebuffer (struct fb_info*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int pxa168fb_remove(struct platform_device *pdev)
{
 struct pxa168fb_info *fbi = platform_get_drvdata(pdev);
 struct fb_info *info;
 int irq;
 unsigned int data;

 if (!fbi)
  return 0;


 data = readl(fbi->reg_base + LCD_SPU_DMA_CTRL0);
 data &= ~CFG_GRA_ENA_MASK;
 writel(data, fbi->reg_base + LCD_SPU_DMA_CTRL0);

 info = fbi->info;

 unregister_framebuffer(info);

 writel(GRA_FRAME_IRQ0_ENA(0x0), fbi->reg_base + SPU_IRQ_ENA);

 if (info->cmap.len)
  fb_dealloc_cmap(&info->cmap);

 irq = platform_get_irq(pdev, 0);

 dma_free_wc(fbi->dev, PAGE_ALIGN(info->fix.smem_len),
      info->screen_base, info->fix.smem_start);

 clk_disable_unprepare(fbi->clk);

 framebuffer_release(info);

 return 0;
}
