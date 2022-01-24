#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct max8997_rtc_info {int virq; int /*<<< orphan*/  rtc_dev; int /*<<< orphan*/  rtc; struct max8997_dev* max8997; TYPE_1__* dev; int /*<<< orphan*/  lock; } ;
struct max8997_dev {int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  rtc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX8997_PMICIRQ_RTCA1 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 struct max8997_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 struct max8997_rtc_info* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct max8997_rtc_info*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max8997_rtc_alarm_irq ; 
 int /*<<< orphan*/  FUNC9 (struct max8997_rtc_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct max8997_rtc_info*,int) ; 
 int FUNC11 (struct max8997_rtc_info*) ; 
 int /*<<< orphan*/  max8997_rtc_ops ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct max8997_rtc_info*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct max8997_dev *max8997 = FUNC3(pdev->dev.parent);
	struct max8997_rtc_info *info;
	int ret, virq;

	info = FUNC5(&pdev->dev, sizeof(struct max8997_rtc_info),
			GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	FUNC12(&info->lock);
	info->dev = &pdev->dev;
	info->max8997 = max8997;
	info->rtc = max8997->rtc;

	FUNC13(pdev, info);

	ret = FUNC11(info);

	if (ret < 0) {
		FUNC2(&pdev->dev, "Failed to initialize RTC reg:%d\n", ret);
		return ret;
	}

	FUNC10(info, true);
	FUNC9(info, true);

	FUNC4(&pdev->dev, 1);

	info->rtc_dev = FUNC7(&pdev->dev, "max8997-rtc",
					&max8997_rtc_ops, THIS_MODULE);

	if (FUNC0(info->rtc_dev)) {
		ret = FUNC1(info->rtc_dev);
		FUNC2(&pdev->dev, "Failed to register RTC device: %d\n", ret);
		return ret;
	}

	virq = FUNC8(max8997->irq_domain, MAX8997_PMICIRQ_RTCA1);
	if (!virq) {
		FUNC2(&pdev->dev, "Failed to create mapping alarm IRQ\n");
		ret = -ENXIO;
		goto err_out;
	}
	info->virq = virq;

	ret = FUNC6(&pdev->dev, virq, NULL,
				max8997_rtc_alarm_irq, 0,
				"rtc-alarm0", info);
	if (ret < 0)
		FUNC2(&pdev->dev, "Failed to request alarm IRQ: %d: %d\n",
			info->virq, ret);

err_out:
	return ret;
}