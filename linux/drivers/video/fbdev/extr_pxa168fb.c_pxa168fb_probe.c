
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct pxa168fb_mach_info {int io_pin_allocation_mode; int num_modes; int modes; int pix_fmt; int id; int active; int panel_rbswap; } ;
struct pxa168fb_info {scalar_t__ fb_start_dma; int * dev; struct clk* clk; int * reg_base; int pseudo_palette; int active; scalar_t__ is_blanked; int panel_rbswap; struct fb_info* info; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {unsigned long smem_start; int smem_len; int id; int accel; int mmio_len; int mmio_start; scalar_t__ ywrapstep; scalar_t__ ypanstep; scalar_t__ xpanstep; scalar_t__ type_aux; int type; } ;
struct fb_info {int flags; int node; int * screen_base; TYPE_1__ fix; int cmap; int var; int modelist; int pseudo_palette; int * fbops; int * dev; struct pxa168fb_info* par; } ;
struct clk {int dummy; } ;


 int CFG_CSB_256x24 (int) ;
 int CFG_CSB_256x32 (int) ;
 int CFG_CSB_256x8 (int) ;
 int DEFAULT_FB_SIZE ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int FBINFO_DEFAULT ;
 int FBINFO_HWACCEL_XPAN ;
 int FBINFO_HWACCEL_YPAN ;
 int FBINFO_PARTIAL_PAN_OK ;
 int FB_ACCEL_NONE ;
 int FB_TYPE_PACKED_PIXELS ;
 int GFP_KERNEL ;
 int GRA_FRAME_IRQ0_ENA (int) ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct clk*) ;
 int LCD_CFG_GRA_START_ADDR1 ;
 int LCD_SPU_BLANKCOLOR ;
 int LCD_SPU_GRA_OVSA_HPXL_VLN ;
 int LCD_SPU_SRAM_PARA0 ;
 int LCD_SPU_SRAM_PARA1 ;
 int PAGE_ALIGN (int ) ;
 int PTR_ERR (struct clk*) ;
 int SPU_IOPAD_CONTROL ;
 int SPU_IRQ_ENA ;
 int clk_disable_unprepare (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int dev_err (int *,char*,...) ;
 struct pxa168fb_mach_info* dev_get_platdata (int *) ;
 struct clk* devm_clk_get (int *,char*) ;
 int * devm_ioremap_nocache (int *,int ,int ) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct pxa168fb_info*) ;
 int * dma_alloc_wc (int *,int ,scalar_t__*,int ) ;
 int dma_free_coherent (int *,int ,int *,scalar_t__) ;
 scalar_t__ fb_alloc_cmap (int *,int,int ) ;
 int fb_dealloc_cmap (int *) ;
 int fb_videomode_to_modelist (int ,int ,int *) ;
 struct fb_info* framebuffer_alloc (int,int *) ;
 int kfree (struct fb_info*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pxa168fb_info*) ;
 int pxa168fb_check_var (int *,struct fb_info*) ;
 int pxa168fb_handle_irq ;
 int pxa168fb_init_mode (struct fb_info*,struct pxa168fb_mach_info*) ;
 int pxa168fb_ops ;
 int pxa168fb_set_par (struct fb_info*) ;
 int register_framebuffer (struct fb_info*) ;
 int resource_size (struct resource*) ;
 int set_graphics_start (struct fb_info*,int ,int ) ;
 int set_mode (struct pxa168fb_info*,int *,int ,int ,int) ;
 int strlcpy (int ,int ,int) ;
 int writel (int,int *) ;

__attribute__((used)) static int pxa168fb_probe(struct platform_device *pdev)
{
 struct pxa168fb_mach_info *mi;
 struct fb_info *info = 0;
 struct pxa168fb_info *fbi = 0;
 struct resource *res;
 struct clk *clk;
 int irq, ret;

 mi = dev_get_platdata(&pdev->dev);
 if (mi == ((void*)0)) {
  dev_err(&pdev->dev, "no platform data defined\n");
  return -EINVAL;
 }

 clk = devm_clk_get(&pdev->dev, "LCDCLK");
 if (IS_ERR(clk)) {
  dev_err(&pdev->dev, "unable to get LCDCLK");
  return PTR_ERR(clk);
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res == ((void*)0)) {
  dev_err(&pdev->dev, "no IO memory defined\n");
  return -ENOENT;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(&pdev->dev, "no IRQ defined\n");
  return -ENOENT;
 }

 info = framebuffer_alloc(sizeof(struct pxa168fb_info), &pdev->dev);
 if (info == ((void*)0)) {
  return -ENOMEM;
 }


 fbi = info->par;
 fbi->info = info;
 fbi->clk = clk;
 fbi->dev = info->dev = &pdev->dev;
 fbi->panel_rbswap = mi->panel_rbswap;
 fbi->is_blanked = 0;
 fbi->active = mi->active;




 info->flags = FBINFO_DEFAULT | FBINFO_PARTIAL_PAN_OK |
        FBINFO_HWACCEL_XPAN | FBINFO_HWACCEL_YPAN;
 info->node = -1;
 strlcpy(info->fix.id, mi->id, 16);
 info->fix.type = FB_TYPE_PACKED_PIXELS;
 info->fix.type_aux = 0;
 info->fix.xpanstep = 0;
 info->fix.ypanstep = 0;
 info->fix.ywrapstep = 0;
 info->fix.mmio_start = res->start;
 info->fix.mmio_len = resource_size(res);
 info->fix.accel = FB_ACCEL_NONE;
 info->fbops = &pxa168fb_ops;
 info->pseudo_palette = fbi->pseudo_palette;




 fbi->reg_base = devm_ioremap_nocache(&pdev->dev, res->start,
          resource_size(res));
 if (fbi->reg_base == ((void*)0)) {
  ret = -ENOMEM;
  goto failed_free_info;
 }




 info->fix.smem_len = PAGE_ALIGN(DEFAULT_FB_SIZE);

 info->screen_base = dma_alloc_wc(fbi->dev, info->fix.smem_len,
      &fbi->fb_start_dma, GFP_KERNEL);
 if (info->screen_base == ((void*)0)) {
  ret = -ENOMEM;
  goto failed_free_info;
 }

 info->fix.smem_start = (unsigned long)fbi->fb_start_dma;
 set_graphics_start(info, 0, 0);




 set_mode(fbi, &info->var, mi->modes, mi->pix_fmt, 1);

 fb_videomode_to_modelist(mi->modes, mi->num_modes, &info->modelist);




 pxa168fb_init_mode(info, mi);




 ret = pxa168fb_check_var(&info->var, info);
 if (ret)
  goto failed_free_fbmem;




 clk_prepare_enable(fbi->clk);

 pxa168fb_set_par(info);




 writel(0, fbi->reg_base + LCD_SPU_BLANKCOLOR);
 writel(mi->io_pin_allocation_mode, fbi->reg_base + SPU_IOPAD_CONTROL);
 writel(0, fbi->reg_base + LCD_CFG_GRA_START_ADDR1);
 writel(0, fbi->reg_base + LCD_SPU_GRA_OVSA_HPXL_VLN);
 writel(0, fbi->reg_base + LCD_SPU_SRAM_PARA0);
 writel(CFG_CSB_256x32(0x1)|CFG_CSB_256x24(0x1)|CFG_CSB_256x8(0x1),
  fbi->reg_base + LCD_SPU_SRAM_PARA1);




 if (fb_alloc_cmap(&info->cmap, 256, 0) < 0) {
  ret = -ENOMEM;
  goto failed_free_clk;
 }




 ret = devm_request_irq(&pdev->dev, irq, pxa168fb_handle_irq,
          IRQF_SHARED, info->fix.id, fbi);
 if (ret < 0) {
  dev_err(&pdev->dev, "unable to request IRQ\n");
  ret = -ENXIO;
  goto failed_free_cmap;
 }




 writel(GRA_FRAME_IRQ0_ENA(0x1), fbi->reg_base + SPU_IRQ_ENA);




 ret = register_framebuffer(info);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to register pxa168-fb: %d\n", ret);
  ret = -ENXIO;
  goto failed_free_cmap;
 }

 platform_set_drvdata(pdev, fbi);
 return 0;

failed_free_cmap:
 fb_dealloc_cmap(&info->cmap);
failed_free_clk:
 clk_disable_unprepare(fbi->clk);
failed_free_fbmem:
 dma_free_coherent(fbi->dev, info->fix.smem_len,
   info->screen_base, fbi->fb_start_dma);
failed_free_info:
 kfree(info);

 dev_err(&pdev->dev, "frame buffer device init failed with %d\n", ret);
 return ret;
}
