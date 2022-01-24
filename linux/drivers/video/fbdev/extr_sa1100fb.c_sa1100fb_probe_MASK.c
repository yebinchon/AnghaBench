#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_4__ {int /*<<< orphan*/  var; } ;
struct sa1100fb_info {TYPE_3__ freq_transition; int /*<<< orphan*/  map_dma; int /*<<< orphan*/  map_cpu; int /*<<< orphan*/  map_size; int /*<<< orphan*/  dev; TYPE_1__ fb; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_TRANSITION_NOTIFIER ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHANNON_GPIO_DISP_EN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct resource*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct sa1100fb_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct sa1100fb_info*) ; 
 int FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  sa1100fb_freq_transition ; 
 int /*<<< orphan*/  sa1100fb_handle_irq ; 
 struct sa1100fb_info* FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct sa1100fb_info*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct sa1100fb_info *fbi;
	struct resource *res;
	int ret, irq;

	if (!FUNC4(&pdev->dev)) {
		FUNC3(&pdev->dev, "no platform LCD data\n");
		return -EINVAL;
	}

	irq = FUNC11(pdev, 0);
	if (irq < 0)
		return -EINVAL;

	fbi = FUNC16(&pdev->dev);
	if (!fbi)
		return -ENOMEM;

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	fbi->base = FUNC7(&pdev->dev, res);
	if (FUNC0(fbi->base))
		return FUNC1(fbi->base);

	fbi->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(fbi->clk))
		return FUNC1(fbi->clk);

	ret = FUNC8(&pdev->dev, irq, sa1100fb_handle_irq, 0,
			       "LCD", fbi);
	if (ret) {
		FUNC3(&pdev->dev, "request_irq failed: %d\n", ret);
		return ret;
	}

	if (FUNC10()) {
		ret = FUNC6(&pdev->dev, SHANNON_GPIO_DISP_EN,
			GPIOF_OUT_INIT_LOW, "display enable");
		if (ret)
			return ret;
	}

	/* Initialize video memory */
	ret = FUNC17(fbi);
	if (ret)
		return ret;

	/*
	 * This makes sure that our colour bitfield
	 * descriptors are correctly initialised.
	 */
	FUNC15(&fbi->fb.var, &fbi->fb);

	FUNC13(pdev, fbi);

	ret = FUNC14(&fbi->fb);
	if (ret < 0) {
		FUNC9(fbi->dev, fbi->map_size, fbi->map_cpu,
			    fbi->map_dma);
		return ret;
	}

#ifdef CONFIG_CPU_FREQ
	fbi->freq_transition.notifier_call = sa1100fb_freq_transition;
	cpufreq_register_notifier(&fbi->freq_transition, CPUFREQ_TRANSITION_NOTIFIER);
#endif

	/* This driver cannot be unloaded at the moment */
	return 0;
}