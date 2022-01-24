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
struct rtc_device {int /*<<< orphan*/  range_max; int /*<<< orphan*/  range_min; int /*<<< orphan*/ * ops; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 unsigned long RTC_CNTR_OK ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_BEGIN_1900 ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_END_2099 ; 
 int SYS_CNTRL_TTS ; 
 int /*<<< orphan*/  SYS_COUNTER_CNTRL ; 
 int /*<<< orphan*/  SYS_TOYTRIM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct rtc_device* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ls1x_rtc_ops ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct rtc_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct rtc_device *rtcdev;
	unsigned long v;

	v = FUNC5(SYS_COUNTER_CNTRL);
	if (!(v & RTC_CNTR_OK)) {
		FUNC2(&pdev->dev, "rtc counters not working\n");
		return -ENODEV;
	}

	/* set to 1 HZ if needed */
	if (FUNC5(SYS_TOYTRIM) != 32767) {
		v = 0x100000;
		while ((FUNC5(SYS_COUNTER_CNTRL) & SYS_CNTRL_TTS) && --v)
			FUNC7(1000, 3000);

		if (!v) {
			FUNC2(&pdev->dev, "time out\n");
			return -ETIMEDOUT;
		}
		FUNC8(32767, SYS_TOYTRIM);
	}
	/* this loop coundn't be endless */
	while (FUNC5(SYS_COUNTER_CNTRL) & SYS_CNTRL_TTS)
		FUNC7(1000, 3000);

	rtcdev = FUNC3(&pdev->dev);
	if (FUNC0(rtcdev))
		return FUNC1(rtcdev);

	FUNC4(pdev, rtcdev);
	rtcdev->ops = &ls1x_rtc_ops;
	rtcdev->range_min = RTC_TIMESTAMP_BEGIN_1900;
	rtcdev->range_max = RTC_TIMESTAMP_END_2099;

	return FUNC6(rtcdev);
}