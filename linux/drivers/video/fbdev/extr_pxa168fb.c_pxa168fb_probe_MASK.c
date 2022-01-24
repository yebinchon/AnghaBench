#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct pxa168fb_mach_info {int io_pin_allocation_mode; int /*<<< orphan*/  num_modes; int /*<<< orphan*/  modes; int /*<<< orphan*/  pix_fmt; int /*<<< orphan*/  id; int /*<<< orphan*/  active; int /*<<< orphan*/  panel_rbswap; } ;
struct pxa168fb_info {scalar_t__ fb_start_dma; int /*<<< orphan*/ * dev; struct clk* clk; int /*<<< orphan*/ * reg_base; int /*<<< orphan*/  pseudo_palette; int /*<<< orphan*/  active; scalar_t__ is_blanked; int /*<<< orphan*/  panel_rbswap; struct fb_info* info; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned long smem_start; int /*<<< orphan*/  smem_len; int /*<<< orphan*/  id; int /*<<< orphan*/  accel; int /*<<< orphan*/  mmio_len; int /*<<< orphan*/  mmio_start; scalar_t__ ywrapstep; scalar_t__ ypanstep; scalar_t__ xpanstep; scalar_t__ type_aux; int /*<<< orphan*/  type; } ;
struct fb_info {int flags; int node; int /*<<< orphan*/ * screen_base; TYPE_1__ fix; int /*<<< orphan*/  cmap; int /*<<< orphan*/  var; int /*<<< orphan*/  modelist; int /*<<< orphan*/  pseudo_palette; int /*<<< orphan*/ * fbops; int /*<<< orphan*/ * dev; struct pxa168fb_info* par; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  DEFAULT_FB_SIZE ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int FBINFO_DEFAULT ; 
 int FBINFO_HWACCEL_XPAN ; 
 int FBINFO_HWACCEL_YPAN ; 
 int FBINFO_PARTIAL_PAN_OK ; 
 int /*<<< orphan*/  FB_ACCEL_NONE ; 
 int /*<<< orphan*/  FB_TYPE_PACKED_PIXELS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC4 (struct clk*) ; 
 int LCD_CFG_GRA_START_ADDR1 ; 
 int LCD_SPU_BLANKCOLOR ; 
 int LCD_SPU_GRA_OVSA_HPXL_VLN ; 
 int LCD_SPU_SRAM_PARA0 ; 
 int LCD_SPU_SRAM_PARA1 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct clk*) ; 
 int SPU_IOPAD_CONTROL ; 
 int SPU_IRQ_ENA ; 
 int /*<<< orphan*/  FUNC7 (struct clk*) ; 
 int /*<<< orphan*/  FUNC8 (struct clk*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 struct pxa168fb_mach_info* FUNC10 (int /*<<< orphan*/ *) ; 
 struct clk* FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pxa168fb_info*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fb_info* FUNC19 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct fb_info*) ; 
 int FUNC21 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC22 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*,struct pxa168fb_info*) ; 
 int FUNC24 (int /*<<< orphan*/ *,struct fb_info*) ; 
 int /*<<< orphan*/  pxa168fb_handle_irq ; 
 int /*<<< orphan*/  FUNC25 (struct fb_info*,struct pxa168fb_mach_info*) ; 
 int /*<<< orphan*/  pxa168fb_ops ; 
 int /*<<< orphan*/  FUNC26 (struct fb_info*) ; 
 int FUNC27 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC28 (struct resource*) ; 
 int /*<<< orphan*/  FUNC29 (struct fb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct pxa168fb_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC32 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC33(struct platform_device *pdev)
{
	struct pxa168fb_mach_info *mi;
	struct fb_info *info = 0;
	struct pxa168fb_info *fbi = 0;
	struct resource *res;
	struct clk *clk;
	int irq, ret;

	mi = FUNC10(&pdev->dev);
	if (mi == NULL) {
		FUNC9(&pdev->dev, "no platform data defined\n");
		return -EINVAL;
	}

	clk = FUNC11(&pdev->dev, "LCDCLK");
	if (FUNC4(clk)) {
		FUNC9(&pdev->dev, "unable to get LCDCLK");
		return FUNC6(clk);
	}

	res = FUNC22(pdev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC9(&pdev->dev, "no IO memory defined\n");
		return -ENOENT;
	}

	irq = FUNC21(pdev, 0);
	if (irq < 0) {
		FUNC9(&pdev->dev, "no IRQ defined\n");
		return -ENOENT;
	}

	info = FUNC19(sizeof(struct pxa168fb_info), &pdev->dev);
	if (info == NULL) {
		return -ENOMEM;
	}

	/* Initialize private data */
	fbi = info->par;
	fbi->info = info;
	fbi->clk = clk;
	fbi->dev = info->dev = &pdev->dev;
	fbi->panel_rbswap = mi->panel_rbswap;
	fbi->is_blanked = 0;
	fbi->active = mi->active;

	/*
	 * Initialise static fb parameters.
	 */
	info->flags = FBINFO_DEFAULT | FBINFO_PARTIAL_PAN_OK |
		      FBINFO_HWACCEL_XPAN | FBINFO_HWACCEL_YPAN;
	info->node = -1;
	FUNC31(info->fix.id, mi->id, 16);
	info->fix.type = FB_TYPE_PACKED_PIXELS;
	info->fix.type_aux = 0;
	info->fix.xpanstep = 0;
	info->fix.ypanstep = 0;
	info->fix.ywrapstep = 0;
	info->fix.mmio_start = res->start;
	info->fix.mmio_len = FUNC28(res);
	info->fix.accel = FB_ACCEL_NONE;
	info->fbops = &pxa168fb_ops;
	info->pseudo_palette = fbi->pseudo_palette;

	/*
	 * Map LCD controller registers.
	 */
	fbi->reg_base = FUNC12(&pdev->dev, res->start,
					     FUNC28(res));
	if (fbi->reg_base == NULL) {
		ret = -ENOMEM;
		goto failed_free_info;
	}

	/*
	 * Allocate framebuffer memory.
	 */
	info->fix.smem_len = FUNC5(DEFAULT_FB_SIZE);

	info->screen_base = FUNC14(fbi->dev, info->fix.smem_len,
					 &fbi->fb_start_dma, GFP_KERNEL);
	if (info->screen_base == NULL) {
		ret = -ENOMEM;
		goto failed_free_info;
	}

	info->fix.smem_start = (unsigned long)fbi->fb_start_dma;
	FUNC29(info, 0, 0);

	/*
	 * Set video mode according to platform data.
	 */
	FUNC30(fbi, &info->var, mi->modes, mi->pix_fmt, 1);

	FUNC18(mi->modes, mi->num_modes, &info->modelist);

	/*
	 * init video mode data.
	 */
	FUNC25(info, mi);

	/*
	 * Fill in sane defaults.
	 */
	ret = FUNC24(&info->var, info);
	if (ret)
		goto failed_free_fbmem;

	/*
	 * enable controller clock
	 */
	FUNC8(fbi->clk);

	FUNC26(info);

	/*
	 * Configure default register values.
	 */
	FUNC32(0, fbi->reg_base + LCD_SPU_BLANKCOLOR);
	FUNC32(mi->io_pin_allocation_mode, fbi->reg_base + SPU_IOPAD_CONTROL);
	FUNC32(0, fbi->reg_base + LCD_CFG_GRA_START_ADDR1);
	FUNC32(0, fbi->reg_base + LCD_SPU_GRA_OVSA_HPXL_VLN);
	FUNC32(0, fbi->reg_base + LCD_SPU_SRAM_PARA0);
	FUNC32(FUNC1(0x1)|FUNC0(0x1)|FUNC2(0x1),
		fbi->reg_base + LCD_SPU_SRAM_PARA1);

	/*
	 * Allocate color map.
	 */
	if (FUNC16(&info->cmap, 256, 0) < 0) {
		ret = -ENOMEM;
		goto failed_free_clk;
	}

	/*
	 * Register irq handler.
	 */
	ret = FUNC13(&pdev->dev, irq, pxa168fb_handle_irq,
			       IRQF_SHARED, info->fix.id, fbi);
	if (ret < 0) {
		FUNC9(&pdev->dev, "unable to request IRQ\n");
		ret = -ENXIO;
		goto failed_free_cmap;
	}

	/*
	 * Enable GFX interrupt
	 */
	FUNC32(FUNC3(0x1), fbi->reg_base + SPU_IRQ_ENA);

	/*
	 * Register framebuffer.
	 */
	ret = FUNC27(info);
	if (ret < 0) {
		FUNC9(&pdev->dev, "Failed to register pxa168-fb: %d\n", ret);
		ret = -ENXIO;
		goto failed_free_cmap;
	}

	FUNC23(pdev, fbi);
	return 0;

failed_free_cmap:
	FUNC17(&info->cmap);
failed_free_clk:
	FUNC7(fbi->clk);
failed_free_fbmem:
	FUNC15(fbi->dev, info->fix.smem_len,
			info->screen_base, fbi->fb_start_dma);
failed_free_info:
	FUNC20(info);

	FUNC9(&pdev->dev, "frame buffer device init failed with %d\n", ret);
	return ret;
}