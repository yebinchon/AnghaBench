#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct max8925_rtc_info {int /*<<< orphan*/  rtc_dev; int /*<<< orphan*/  irq; TYPE_1__* dev; int /*<<< orphan*/  rtc; struct max8925_chip* chip; } ;
struct max8925_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  rtc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,...) ; 
 struct max8925_chip* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct max8925_rtc_info*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 struct max8925_rtc_info* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct max8925_rtc_info*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max8925_rtc_ops ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct max8925_rtc_info*) ; 
 int /*<<< orphan*/  rtc_update_handler ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct max8925_chip *chip = FUNC3(pdev->dev.parent);
	struct max8925_rtc_info *info;
	int ret;

	info = FUNC6(&pdev->dev, sizeof(struct max8925_rtc_info),
			    GFP_KERNEL);
	if (!info)
		return -ENOMEM;
	info->chip = chip;
	info->rtc = chip->rtc;
	info->dev = &pdev->dev;
	info->irq = FUNC9(pdev, 0);

	ret = FUNC7(&pdev->dev, info->irq, NULL,
					rtc_update_handler, IRQF_ONESHOT,
					"rtc-alarm0", info);
	if (ret < 0) {
		FUNC2(chip->dev, "Failed to request IRQ: #%d: %d\n",
			info->irq, ret);
		return ret;
	}

	FUNC4(&pdev->dev, info);
	/* XXX - isn't this redundant? */
	FUNC10(pdev, info);

	FUNC5(&pdev->dev, 1);

	info->rtc_dev = FUNC8(&pdev->dev, "max8925-rtc",
					&max8925_rtc_ops, THIS_MODULE);
	ret = FUNC1(info->rtc_dev);
	if (FUNC0(info->rtc_dev)) {
		FUNC2(&pdev->dev, "Failed to register RTC device: %d\n", ret);
		return ret;
	}

	return 0;
}