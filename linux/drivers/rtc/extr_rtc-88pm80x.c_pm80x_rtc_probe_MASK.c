#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct pm80x_rtc_pdata {int /*<<< orphan*/  rtc_wakeup; } ;
struct pm80x_rtc_info {scalar_t__ irq; TYPE_2__* rtc_dev; int /*<<< orphan*/  map; TYPE_4__* dev; struct pm80x_chip* chip; } ;
struct pm80x_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct TYPE_14__ {struct device_node* of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/ * platform_data; } ;
struct TYPE_13__ {TYPE_1__ dev; int /*<<< orphan*/  range_max; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  PM800_RTC1_USE_XO ; 
 int /*<<< orphan*/  PM800_RTC_CONTROL ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  U32_MAX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,...) ; 
 struct pm80x_chip* FUNC3 (int /*<<< orphan*/ ) ; 
 struct pm80x_rtc_pdata* FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,struct pm80x_rtc_info*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 void* FUNC7 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pm80x_chip*,scalar_t__,struct pm80x_rtc_info*) ; 
 int FUNC11 (struct pm80x_chip*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pm80x_rtc_info*) ; 
 int /*<<< orphan*/  pm80x_rtc_ops ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  rtc_update_handler ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct pm80x_chip *chip = FUNC3(pdev->dev.parent);
	struct pm80x_rtc_pdata *pdata = FUNC4(&pdev->dev);
	struct pm80x_rtc_info *info;
	struct device_node *node = pdev->dev.of_node;
	int ret;

	if (!pdata && !node) {
		FUNC2(&pdev->dev,
			"pm80x-rtc requires platform data or of_node\n");
		return -EINVAL;
	}

	if (!pdata) {
		pdata = FUNC7(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
		if (!pdata) {
			FUNC2(&pdev->dev, "failed to allocate memory\n");
			return -ENOMEM;
		}
	}

	info =
	    FUNC7(&pdev->dev, sizeof(struct pm80x_rtc_info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;
	info->irq = FUNC9(pdev, 0);
	if (info->irq < 0) {
		ret = -EINVAL;
		goto out;
	}

	info->chip = chip;
	info->map = chip->regmap;
	if (!info->map) {
		FUNC2(&pdev->dev, "no regmap!\n");
		ret = -EINVAL;
		goto out;
	}

	info->dev = &pdev->dev;
	FUNC5(&pdev->dev, info);

	info->rtc_dev = FUNC8(&pdev->dev);
	if (FUNC0(info->rtc_dev))
		return FUNC1(info->rtc_dev);

	ret = FUNC11(chip, info->irq, rtc_update_handler,
				IRQF_ONESHOT, "rtc", info);
	if (ret < 0) {
		FUNC2(chip->dev, "Failed to request IRQ: #%d: %d\n",
			info->irq, ret);
		goto out;
	}

	info->rtc_dev->ops = &pm80x_rtc_ops;
	info->rtc_dev->range_max = U32_MAX;

	ret = FUNC13(info->rtc_dev);
	if (ret)
		goto out_rtc;

	/*
	 * enable internal XO instead of internal 3.25MHz clock since it can
	 * free running in PMIC power-down state.
	 */
	FUNC12(info->map, PM800_RTC_CONTROL, PM800_RTC1_USE_XO,
			   PM800_RTC1_USE_XO);

	/* remember whether this power up is caused by PMIC RTC or not */
	info->rtc_dev->dev.platform_data = &pdata->rtc_wakeup;

	FUNC6(&pdev->dev, 1);

	return 0;
out_rtc:
	FUNC10(chip, info->irq, info);
out:
	return ret;
}