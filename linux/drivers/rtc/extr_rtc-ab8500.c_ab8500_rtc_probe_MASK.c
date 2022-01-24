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
typedef  int u8 ;
struct rtc_device {int uie_unsupported; unsigned long long range_max; int set_start_time; int /*<<< orphan*/  start_secs; struct rtc_class_ops* ops; } ;
struct rtc_class_ops {int dummy; } ;
struct platform_device_id {scalar_t__ driver_data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_RTC ; 
 int /*<<< orphan*/  AB8500_RTC_STAT_REG ; 
 int ENODEV ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 int RTC_STATUS_DATA ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_BEGIN_2000 ; 
 int /*<<< orphan*/  ab8500_rtc_sysfs_files ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct rtc_device*) ; 
 struct rtc_device* FUNC8 (int /*<<< orphan*/ *) ; 
 struct platform_device_id* FUNC9 (struct platform_device*) ; 
 int FUNC10 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct rtc_device*) ; 
 int FUNC12 (struct rtc_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtc_alarm_handler ; 
 int FUNC13 (struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	const struct platform_device_id *platid = FUNC9(pdev);
	int err;
	struct rtc_device *rtc;
	u8 rtc_ctrl;
	int irq;

	irq = FUNC10(pdev, "ALARM");
	if (irq < 0)
		return irq;

	/* For RTC supply test */
	err = FUNC3(&pdev->dev, AB8500_RTC,
		AB8500_RTC_STAT_REG, RTC_STATUS_DATA, RTC_STATUS_DATA);
	if (err < 0)
		return err;

	/* Wait for reset by the PorRtc */
	FUNC14(1000, 5000);

	err = FUNC2(&pdev->dev, AB8500_RTC,
		AB8500_RTC_STAT_REG, &rtc_ctrl);
	if (err < 0)
		return err;

	/* Check if the RTC Supply fails */
	if (!(rtc_ctrl & RTC_STATUS_DATA)) {
		FUNC4(&pdev->dev, "RTC supply failure\n");
		return -ENODEV;
	}

	FUNC6(&pdev->dev, true);

	rtc = FUNC8(&pdev->dev);
	if (FUNC0(rtc))
		return FUNC1(rtc);

	rtc->ops = (struct rtc_class_ops *)platid->driver_data;

	err = FUNC7(&pdev->dev, irq, NULL,
			rtc_alarm_handler, IRQF_ONESHOT,
			"ab8500-rtc", rtc);
	if (err < 0)
		return err;

	FUNC5(&pdev->dev, irq);
	FUNC11(pdev, rtc);

	rtc->uie_unsupported = 1;

	rtc->range_max = (1ULL << 24) * 60 - 1; // 24-bit minutes + 59 secs
	rtc->start_secs = RTC_TIMESTAMP_BEGIN_2000;
	rtc->set_start_time = true;

	err = FUNC12(rtc, &ab8500_rtc_sysfs_files);
	if (err)
		return err;

	return FUNC13(rtc);
}