#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device {struct da9150_fg_pdata* platform_data; scalar_t__ of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct da9150_fg_pdata {int warn_soc_lvl; int crit_soc_lvl; scalar_t__ update_interval; } ;
struct da9150_fg {int warn_soc; int crit_soc; int /*<<< orphan*/  work; scalar_t__ interval; int /*<<< orphan*/  battery; int /*<<< orphan*/  io_lock; struct device* dev; struct da9150* da9150; } ;
struct da9150 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9150_CORE2WIRE_CTRL_A ; 
 int /*<<< orphan*/  DA9150_FG_QIF_EN_MASK ; 
 int /*<<< orphan*/  DA9150_QIF_FW_MAIN_VER ; 
 int /*<<< orphan*/  DA9150_QIF_FW_MAIN_VER_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct da9150_fg_pdata* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  da9150_fg_irq ; 
 int FUNC5 (struct da9150_fg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct da9150_fg*) ; 
 int /*<<< orphan*/  da9150_fg_work ; 
 int /*<<< orphan*/  FUNC7 (struct da9150*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int,...) ; 
 struct da9150* FUNC9 (int /*<<< orphan*/ ) ; 
 struct da9150_fg_pdata* FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*) ; 
 struct da9150_fg* FUNC13 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct da9150_fg*) ; 
 int /*<<< orphan*/  fg_desc ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct da9150_fg*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct da9150 *da9150 = FUNC9(dev->parent);
	struct da9150_fg_pdata *fg_pdata = FUNC10(dev);
	struct da9150_fg *fg;
	int ver, irq, ret = 0;

	fg = FUNC13(dev, sizeof(*fg), GFP_KERNEL);
	if (fg == NULL)
		return -ENOMEM;

	FUNC19(pdev, fg);
	fg->da9150 = da9150;
	fg->dev = dev;

	FUNC17(&fg->io_lock);

	/* Enable QIF */
	FUNC7(da9150, DA9150_CORE2WIRE_CTRL_A, DA9150_FG_QIF_EN_MASK,
			DA9150_FG_QIF_EN_MASK);

	fg->battery = FUNC14(dev, &fg_desc, NULL);
	if (FUNC1(fg->battery)) {
		ret = FUNC2(fg->battery);
		return ret;
	}

	ver = FUNC5(fg, DA9150_QIF_FW_MAIN_VER,
				  DA9150_QIF_FW_MAIN_VER_SIZE);
	FUNC11(dev, "Version: 0x%x\n", ver);

	/* Handle DT data if provided */
	if (dev->of_node) {
		fg_pdata = FUNC4(dev);
		dev->platform_data = fg_pdata;
	}

	/* Handle any pdata provided */
	if (fg_pdata) {
		fg->interval = fg_pdata->update_interval;

		if (fg_pdata->warn_soc_lvl > 100)
			FUNC12(dev, "Invalid SOC warning level provided, Ignoring");
		else
			fg->warn_soc = fg_pdata->warn_soc_lvl;

		if ((fg_pdata->crit_soc_lvl > 100) ||
		    (fg_pdata->crit_soc_lvl >= fg_pdata->warn_soc_lvl))
			FUNC12(dev, "Invalid SOC critical level provided, Ignoring");
		else
			fg->crit_soc = fg_pdata->crit_soc_lvl;


	}

	/* Configure initial SOC level events */
	FUNC6(fg);

	/*
	 * If an interval period has been provided then setup repeating
	 * work for reporting data updates.
	 */
	if (fg->interval) {
		FUNC0(&fg->work, da9150_fg_work);
		FUNC20(&fg->work,
				      FUNC16(fg->interval));
	}

	/* Register IRQ */
	irq = FUNC18(pdev, "FG");
	if (irq < 0) {
		FUNC8(dev, "Failed to get IRQ FG: %d\n", irq);
		ret = irq;
		goto irq_fail;
	}

	ret = FUNC15(dev, irq, NULL, da9150_fg_irq,
					IRQF_ONESHOT, "FG", fg);
	if (ret) {
		FUNC8(dev, "Failed to request IRQ %d: %d\n", irq, ret);
		goto irq_fail;
	}

	return 0;

irq_fail:
	if (fg->interval)
		FUNC3(&fg->work);

	return ret;
}