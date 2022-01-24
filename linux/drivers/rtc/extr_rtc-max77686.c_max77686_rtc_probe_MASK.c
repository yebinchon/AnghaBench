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
struct platform_device_id {int /*<<< orphan*/  name; scalar_t__ driver_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct max77686_rtc_info {int /*<<< orphan*/  rtc_irq_data; int /*<<< orphan*/  rtc_irq; int /*<<< orphan*/  virq; int /*<<< orphan*/  rtc_dev; struct max77686_rtc_driver_data const* drv_data; int /*<<< orphan*/ * dev; int /*<<< orphan*/  lock; } ;
struct max77686_rtc_driver_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX77686_RTCIRQ_RTCA1 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct max77686_rtc_info* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct max77686_rtc_info*) ; 
 int /*<<< orphan*/  max77686_rtc_alarm_irq ; 
 int FUNC7 (struct max77686_rtc_info*) ; 
 int /*<<< orphan*/  max77686_rtc_ops ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct platform_device_id* FUNC9 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct max77686_rtc_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct max77686_rtc_info*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct max77686_rtc_info *info;
	const struct platform_device_id *id = FUNC9(pdev);
	int ret;

	info = FUNC4(&pdev->dev, sizeof(struct max77686_rtc_info),
			    GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	FUNC8(&info->lock);
	info->dev = &pdev->dev;
	info->drv_data = (const struct max77686_rtc_driver_data *)
		id->driver_data;

	ret = FUNC6(info);
	if (ret < 0)
		return ret;

	FUNC10(pdev, info);

	ret = FUNC7(info);
	if (ret < 0) {
		FUNC2(&pdev->dev, "Failed to initialize RTC reg:%d\n", ret);
		goto err_rtc;
	}

	FUNC3(&pdev->dev, 1);

	info->rtc_dev = FUNC5(&pdev->dev, id->name,
					&max77686_rtc_ops, THIS_MODULE);

	if (FUNC0(info->rtc_dev)) {
		ret = FUNC1(info->rtc_dev);
		FUNC2(&pdev->dev, "Failed to register RTC device: %d\n", ret);
		if (ret == 0)
			ret = -EINVAL;
		goto err_rtc;
	}

	info->virq = FUNC12(info->rtc_irq_data,
					 MAX77686_RTCIRQ_RTCA1);
	if (info->virq <= 0) {
		ret = -ENXIO;
		goto err_rtc;
	}

	ret = FUNC13(info->virq, NULL, max77686_rtc_alarm_irq, 0,
				   "rtc-alarm1", info);
	if (ret < 0) {
		FUNC2(&pdev->dev, "Failed to request alarm IRQ: %d: %d\n",
			info->virq, ret);
		goto err_rtc;
	}

	return 0;

err_rtc:
	FUNC11(info->rtc_irq, info->rtc_irq_data);

	return ret;
}