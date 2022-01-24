#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct s3c2410fb_mach_info {int default_display; int num_displays; struct s3c2410fb_display* displays; } ;
struct s3c2410fb_info {int drv_type; int /*<<< orphan*/ * io; int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_rate; int /*<<< orphan*/ * palette_buffer; int /*<<< orphan*/  pseudo_pal; int /*<<< orphan*/ * irq_base; int /*<<< orphan*/ * mem; int /*<<< orphan*/ * dev; } ;
struct s3c2410fb_display {unsigned long xres; unsigned long yres; unsigned long bpp; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {unsigned long smem_len; int /*<<< orphan*/  id; int /*<<< orphan*/  accel; scalar_t__ ywrapstep; scalar_t__ ypanstep; scalar_t__ xpanstep; scalar_t__ type_aux; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {unsigned long xres; unsigned long yres; unsigned long bits_per_pixel; int /*<<< orphan*/  vmode; scalar_t__ accel_flags; int /*<<< orphan*/  activate; scalar_t__ nonstd; } ;
struct fb_info {TYPE_1__ fix; int /*<<< orphan*/  node; TYPE_2__ var; int /*<<< orphan*/ * pseudo_palette; int /*<<< orphan*/  flags; int /*<<< orphan*/ * fbops; struct s3c2410fb_info* par; } ;
typedef  enum s3c_drv_type { ____Placeholder_s3c_drv_type } s3c_drv_type ;

/* Variables and functions */
 int DRV_S3C2412 ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FBINFO_FLAG_DEFAULT ; 
 int /*<<< orphan*/  FB_ACCEL_NONE ; 
 int /*<<< orphan*/  FB_ACTIVATE_NOW ; 
 int /*<<< orphan*/  FB_TYPE_PACKED_PIXELS ; 
 int /*<<< orphan*/  FB_VMODE_NONINTERLACED ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PALETTE_BUFF_CLEAR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int S3C2410_LCDCON1 ; 
 int S3C2410_LCDCON1_ENVID ; 
 int S3C2410_LCDINTBASE ; 
 int S3C2412_LCDINTBASE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_debug ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 struct s3c2410fb_mach_info* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  driver_name ; 
 struct fb_info* FUNC12 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC14 (int,struct s3c2410fb_info*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct fb_info*) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int) ; 
 int FUNC23 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s3c2410fb_info*) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct resource*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC27 (struct s3c2410fb_info*) ; 
 int FUNC28 (struct s3c2410fb_info*) ; 
 int /*<<< orphan*/  FUNC29 (struct fb_info*) ; 
 int /*<<< orphan*/  s3c2410fb_irq ; 
 int FUNC30 (struct fb_info*) ; 
 int /*<<< orphan*/  s3c2410fb_ops ; 
 int /*<<< orphan*/  FUNC31 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int,int) ; 
 int /*<<< orphan*/  FUNC34 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC35(struct platform_device *pdev,
			   enum s3c_drv_type drv_type)
{
	struct s3c2410fb_info *info;
	struct s3c2410fb_display *display;
	struct fb_info *fbinfo;
	struct s3c2410fb_mach_info *mach_info;
	struct resource *res;
	int ret;
	int irq;
	int i;
	int size;
	u32 lcdcon1;

	mach_info = FUNC8(&pdev->dev);
	if (mach_info == NULL) {
		FUNC7(&pdev->dev,
			"no platform data for lcd, cannot attach\n");
		return -EINVAL;
	}

	if (mach_info->default_display >= mach_info->num_displays) {
		FUNC7(&pdev->dev, "default is %d but only %d displays\n",
			mach_info->default_display, mach_info->num_displays);
		return -EINVAL;
	}

	display = mach_info->displays + mach_info->default_display;

	irq = FUNC17(pdev, 0);
	if (irq < 0) {
		FUNC7(&pdev->dev, "no irq for device\n");
		return -ENOENT;
	}

	fbinfo = FUNC12(sizeof(struct s3c2410fb_info), &pdev->dev);
	if (!fbinfo)
		return -ENOMEM;

	FUNC19(pdev, fbinfo);

	info = fbinfo->par;
	info->dev = &pdev->dev;
	info->drv_type = drv_type;

	res = FUNC18(pdev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC7(&pdev->dev, "failed to get memory registers\n");
		ret = -ENXIO;
		goto dealloc_fb;
	}

	size = FUNC25(res);
	info->mem = FUNC24(res->start, size, pdev->name);
	if (info->mem == NULL) {
		FUNC7(&pdev->dev, "failed to get memory region\n");
		ret = -ENOENT;
		goto dealloc_fb;
	}

	info->io = FUNC15(res->start, size);
	if (info->io == NULL) {
		FUNC7(&pdev->dev, "ioremap() of registers failed\n");
		ret = -ENXIO;
		goto release_mem;
	}

	if (drv_type == DRV_S3C2412)
		info->irq_base = info->io + S3C2412_LCDINTBASE;
	else
		info->irq_base = info->io + S3C2410_LCDINTBASE;

	FUNC11("devinit\n");

	FUNC32(fbinfo->fix.id, driver_name);

	/* Stop the video */
	lcdcon1 = FUNC20(info->io + S3C2410_LCDCON1);
	FUNC34(lcdcon1 & ~S3C2410_LCDCON1_ENVID, info->io + S3C2410_LCDCON1);

	fbinfo->fix.type	    = FB_TYPE_PACKED_PIXELS;
	fbinfo->fix.type_aux	    = 0;
	fbinfo->fix.xpanstep	    = 0;
	fbinfo->fix.ypanstep	    = 0;
	fbinfo->fix.ywrapstep	    = 0;
	fbinfo->fix.accel	    = FB_ACCEL_NONE;

	fbinfo->var.nonstd	    = 0;
	fbinfo->var.activate	    = FB_ACTIVATE_NOW;
	fbinfo->var.accel_flags     = 0;
	fbinfo->var.vmode	    = FB_VMODE_NONINTERLACED;

	fbinfo->fbops		    = &s3c2410fb_ops;
	fbinfo->flags		    = FBINFO_FLAG_DEFAULT;
	fbinfo->pseudo_palette      = &info->pseudo_pal;

	for (i = 0; i < 256; i++)
		info->palette_buffer[i] = PALETTE_BUFF_CLEAR;

	ret = FUNC23(irq, s3c2410fb_irq, 0, pdev->name, info);
	if (ret) {
		FUNC7(&pdev->dev, "cannot get irq %d - err %d\n", irq, ret);
		ret = -EBUSY;
		goto release_regs;
	}

	info->clk = FUNC3(NULL, "lcd");
	if (FUNC0(info->clk)) {
		FUNC7(&pdev->dev, "failed to get lcd clock source\n");
		ret = FUNC1(info->clk);
		goto release_irq;
	}

	FUNC5(info->clk);
	FUNC11("got and enabled clock\n");

	FUNC33(1000, 1100);

	info->clk_rate = FUNC4(info->clk);

	/* find maximum required memory size for display */
	for (i = 0; i < mach_info->num_displays; i++) {
		unsigned long smem_len = mach_info->displays[i].xres;

		smem_len *= mach_info->displays[i].yres;
		smem_len *= mach_info->displays[i].bpp;
		smem_len >>= 3;
		if (fbinfo->fix.smem_len < smem_len)
			fbinfo->fix.smem_len = smem_len;
	}

	/* Initialize video memory */
	ret = FUNC30(fbinfo);
	if (ret) {
		FUNC7(&pdev->dev, "Failed to allocate video RAM: %d\n", ret);
		ret = -ENOMEM;
		goto release_clock;
	}

	FUNC11("got video memory\n");

	fbinfo->var.xres = display->xres;
	fbinfo->var.yres = display->yres;
	fbinfo->var.bits_per_pixel = display->bpp;

	FUNC29(fbinfo);

	FUNC26(&fbinfo->var, fbinfo);

	ret = FUNC28(info);
	if (ret < 0) {
		FUNC7(&pdev->dev, "Failed to register cpufreq\n");
		goto free_video_memory;
	}

	ret = FUNC21(fbinfo);
	if (ret < 0) {
		FUNC7(&pdev->dev, "Failed to register framebuffer device: %d\n",
			ret);
		goto free_cpufreq;
	}

	/* create device files */
	ret = FUNC10(&pdev->dev, &dev_attr_debug);
	if (ret)
		FUNC7(&pdev->dev, "failed to add debug attribute\n");

	FUNC9(&pdev->dev, "fb%d: %s frame buffer device\n",
		fbinfo->node, fbinfo->fix.id);

	return 0;

 free_cpufreq:
	FUNC27(info);
free_video_memory:
	FUNC31(fbinfo);
release_clock:
	FUNC2(info->clk);
	FUNC6(info->clk);
release_irq:
	FUNC14(irq, info);
release_regs:
	FUNC16(info->io);
release_mem:
	FUNC22(res->start, size);
dealloc_fb:
	FUNC13(fbinfo);
	return ret;
}