#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct pxafb_mach_info {int num_modes; int /*<<< orphan*/  pxafb_lcd_power; int /*<<< orphan*/  pxafb_backlight_power; scalar_t__ acceleration_enabled; TYPE_6__* modes; } ;
struct TYPE_10__ {scalar_t__ len; } ;
struct TYPE_8__ {int /*<<< orphan*/  accel; } ;
struct TYPE_9__ {TYPE_5__ cmap; int /*<<< orphan*/  var; TYPE_1__ fix; } ;
struct TYPE_12__ {int /*<<< orphan*/  notifier_call; } ;
struct pxafb_info {int /*<<< orphan*/  dma_buff_phys; int /*<<< orphan*/ * dma_buff; int /*<<< orphan*/  dma_buff_size; int /*<<< orphan*/  video_mem_size; int /*<<< orphan*/  video_mem; TYPE_2__ fb; TYPE_7__ freq_transition; int /*<<< orphan*/  dev; struct pxafb_info* mmio_base; struct pxafb_info* lcd_supply; int /*<<< orphan*/  lcd_power; int /*<<< orphan*/  backlight_power; } ;
struct pxafb_dma_buff {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {scalar_t__ xres; scalar_t__ yres; scalar_t__ bpp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_TRANSITION_NOTIFIER ; 
 int /*<<< orphan*/  C_ENABLE ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FB_ACCEL_PXA3XX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct pxafb_info*) ; 
 scalar_t__ FUNC1 (struct pxafb_mach_info*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct pxafb_info*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 struct pxafb_mach_info* FUNC8 (int /*<<< orphan*/ *) ; 
 struct pxafb_info* FUNC9 (int /*<<< orphan*/ *,struct resource*) ; 
 struct pxafb_mach_info* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC11 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 struct pxafb_info* FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pxafb_info*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_options ; 
 struct pxafb_mach_info* FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct pxafb_info*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct pxafb_mach_info*) ; 
 int FUNC23 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  pxafb_freq_transition ; 
 int /*<<< orphan*/  pxafb_handle_irq ; 
 struct pxafb_info* FUNC24 (int /*<<< orphan*/ *,struct pxafb_mach_info*) ; 
 int FUNC25 (struct pxafb_info*) ; 
 int /*<<< orphan*/  FUNC26 (struct pxafb_info*) ; 
 int FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pxafb_mach_info*) ; 
 int FUNC28 (TYPE_2__*) ; 
 int FUNC29 (struct pxafb_info*) ; 
 int FUNC30 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC31 (struct pxafb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC32(struct platform_device *dev)
{
	struct pxafb_info *fbi;
	struct pxafb_mach_info *inf, *pdata;
	struct resource *r;
	int i, irq, ret;

	FUNC6(&dev->dev, "pxafb_probe\n");

	ret = -ENOMEM;
	pdata = FUNC8(&dev->dev);
	inf = FUNC10(&dev->dev, sizeof(*inf), GFP_KERNEL);
	if (!inf)
		goto failed;

	if (pdata) {
		*inf = *pdata;
		inf->modes =
			FUNC11(&dev->dev, pdata->num_modes,
					   sizeof(inf->modes[0]), GFP_KERNEL);
		if (!inf->modes)
			goto failed;
		for (i = 0; i < inf->num_modes; i++)
			inf->modes[i] = pdata->modes[i];
	}

	if (!pdata)
		inf = FUNC18(&dev->dev);
	if (FUNC1(inf))
		goto failed;

	ret = FUNC27(&dev->dev, g_options, inf);
	if (ret < 0)
		goto failed;

	FUNC22(&dev->dev, inf);

	FUNC6(&dev->dev, "got a %dx%dx%d LCD\n",
			inf->modes->xres,
			inf->modes->yres,
			inf->modes->bpp);
	if (inf->modes->xres == 0 ||
	    inf->modes->yres == 0 ||
	    inf->modes->bpp == 0) {
		FUNC7(&dev->dev, "Invalid resolution or bit depth\n");
		ret = -EINVAL;
		goto failed;
	}

	fbi = FUNC24(&dev->dev, inf);
	if (FUNC0(fbi)) {
		FUNC7(&dev->dev, "Failed to initialize framebuffer device\n");
		ret = FUNC3(fbi);
		goto failed;
	}

	if (FUNC4() && inf->acceleration_enabled)
		fbi->fb.fix.accel = FB_ACCEL_PXA3XX;

	fbi->backlight_power = inf->pxafb_backlight_power;
	fbi->lcd_power = inf->pxafb_lcd_power;

	fbi->lcd_supply = FUNC12(&dev->dev, "lcd");
	if (FUNC0(fbi->lcd_supply)) {
		if (FUNC3(fbi->lcd_supply) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		fbi->lcd_supply = NULL;
	}

	r = FUNC20(dev, IORESOURCE_MEM, 0);
	if (r == NULL) {
		FUNC7(&dev->dev, "no I/O memory resource defined\n");
		ret = -ENODEV;
		goto failed;
	}

	fbi->mmio_base = FUNC9(&dev->dev, r);
	if (FUNC0(fbi->mmio_base)) {
		FUNC7(&dev->dev, "failed to get I/O memory\n");
		ret = -EBUSY;
		goto failed;
	}

	fbi->dma_buff_size = FUNC2(sizeof(struct pxafb_dma_buff));
	fbi->dma_buff = FUNC14(fbi->dev, fbi->dma_buff_size,
				&fbi->dma_buff_phys, GFP_KERNEL);
	if (fbi->dma_buff == NULL) {
		FUNC7(&dev->dev, "failed to allocate memory for DMA\n");
		ret = -ENOMEM;
		goto failed;
	}

	ret = FUNC25(fbi);
	if (ret) {
		FUNC7(&dev->dev, "Failed to allocate video RAM: %d\n", ret);
		ret = -ENOMEM;
		goto failed_free_dma;
	}

	irq = FUNC19(dev, 0);
	if (irq < 0) {
		FUNC7(&dev->dev, "no IRQ defined\n");
		ret = -ENODEV;
		goto failed_free_mem;
	}

	ret = FUNC13(&dev->dev, irq, pxafb_handle_irq, 0, "LCD", fbi);
	if (ret) {
		FUNC7(&dev->dev, "request_irq failed: %d\n", ret);
		ret = -EBUSY;
		goto failed_free_mem;
	}

	ret = FUNC29(fbi);
	if (ret) {
		FUNC7(&dev->dev, "failed to initialize smartpanel\n");
		goto failed_free_mem;
	}

	/*
	 * This makes sure that our colour bitfield
	 * descriptors are correctly initialised.
	 */
	ret = FUNC23(&fbi->fb.var, &fbi->fb);
	if (ret) {
		FUNC7(&dev->dev, "failed to get suitable mode\n");
		goto failed_free_mem;
	}

	ret = FUNC28(&fbi->fb);
	if (ret) {
		FUNC7(&dev->dev, "Failed to set parameters\n");
		goto failed_free_mem;
	}

	FUNC21(dev, fbi);

	ret = FUNC30(&fbi->fb);
	if (ret < 0) {
		FUNC7(&dev->dev,
			"Failed to register framebuffer device: %d\n", ret);
		goto failed_free_cmap;
	}

	FUNC26(fbi);

#ifdef CONFIG_CPU_FREQ
	fbi->freq_transition.notifier_call = pxafb_freq_transition;
	cpufreq_register_notifier(&fbi->freq_transition,
				CPUFREQ_TRANSITION_NOTIFIER);
#endif

	/*
	 * Ok, now enable the LCD controller
	 */
	FUNC31(fbi, C_ENABLE);

	return 0;

failed_free_cmap:
	if (fbi->fb.cmap.len)
		FUNC16(&fbi->fb.cmap);
failed_free_mem:
	FUNC17(fbi->video_mem, fbi->video_mem_size);
failed_free_dma:
	FUNC15(&dev->dev, fbi->dma_buff_size,
			fbi->dma_buff, fbi->dma_buff_phys);
failed:
	return ret;
}