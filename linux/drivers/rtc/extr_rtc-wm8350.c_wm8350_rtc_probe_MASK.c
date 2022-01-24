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
typedef  int u16 ;
struct wm8350_rtc {int /*<<< orphan*/  rtc; } ;
struct wm8350 {int /*<<< orphan*/  dev; struct wm8350_rtc rtc; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  WM8350_IRQ_RTC_ALM ; 
 int /*<<< orphan*/  WM8350_IRQ_RTC_SEC ; 
 int /*<<< orphan*/  WM8350_POWER_MGMT_5 ; 
 int WM8350_RTC_12HR ; 
 int WM8350_RTC_BCD ; 
 int /*<<< orphan*/  WM8350_RTC_SET ; 
 int WM8350_RTC_STS ; 
 int WM8350_RTC_TICK_ENA ; 
 int /*<<< orphan*/  WM8350_RTC_TIME_CONTROL ; 
 int WM8350_SET_TIME_RETRIES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct wm8350* FUNC6 (struct platform_device*) ; 
 int FUNC7 (struct wm8350*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wm8350*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wm8350*) ; 
 int FUNC10 (struct wm8350*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wm8350*) ; 
 int /*<<< orphan*/  FUNC12 (struct wm8350*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct wm8350*) ; 
 int /*<<< orphan*/  wm8350_rtc_alarm_handler ; 
 int /*<<< orphan*/  wm8350_rtc_ops ; 
 int /*<<< orphan*/  wm8350_rtc_update_handler ; 
 int FUNC13 (struct wm8350*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct wm8350 *wm8350 = FUNC6(pdev);
	struct wm8350_rtc *wm_rtc = &wm8350->rtc;
	int ret = 0;
	u16 timectl, power5;

	timectl = FUNC10(wm8350, WM8350_RTC_TIME_CONTROL);
	if (timectl & WM8350_RTC_BCD) {
		FUNC2(&pdev->dev, "RTC BCD mode not supported\n");
		return -EINVAL;
	}
	if (timectl & WM8350_RTC_12HR) {
		FUNC2(&pdev->dev, "RTC 12 hour mode not supported\n");
		return -EINVAL;
	}

	/* enable the RTC if it's not already enabled */
	power5 = FUNC10(wm8350, WM8350_POWER_MGMT_5);
	if (!(power5 &  WM8350_RTC_TICK_ENA)) {
		FUNC3(wm8350->dev, "Starting RTC\n");

		FUNC11(wm8350);

		ret = FUNC13(wm8350, WM8350_POWER_MGMT_5,
				      WM8350_RTC_TICK_ENA);
		if (ret < 0) {
			FUNC2(&pdev->dev, "failed to enable RTC: %d\n", ret);
			return ret;
		}

		FUNC9(wm8350);
	}

	if (timectl & WM8350_RTC_STS) {
		int retries;

		ret = FUNC7(wm8350, WM8350_RTC_TIME_CONTROL,
					WM8350_RTC_SET);
		if (ret < 0) {
			FUNC2(&pdev->dev, "failed to start: %d\n", ret);
			return ret;
		}

		retries = WM8350_SET_TIME_RETRIES;
		do {
			timectl = FUNC10(wm8350,
						  WM8350_RTC_TIME_CONTROL);
		} while (timectl & WM8350_RTC_STS && --retries);

		if (retries == 0) {
			FUNC2(&pdev->dev, "failed to start: timeout\n");
			return -ENODEV;
		}
	}

	FUNC4(&pdev->dev, 1);

	wm_rtc->rtc = FUNC5(&pdev->dev, "wm8350",
					&wm8350_rtc_ops, THIS_MODULE);
	if (FUNC0(wm_rtc->rtc)) {
		ret = FUNC1(wm_rtc->rtc);
		FUNC2(&pdev->dev, "failed to register RTC: %d\n", ret);
		return ret;
	}

	FUNC12(wm8350, WM8350_IRQ_RTC_SEC,
			    wm8350_rtc_update_handler, 0,
			    "RTC Seconds", wm8350);
	FUNC8(wm8350, WM8350_IRQ_RTC_SEC);

	FUNC12(wm8350, WM8350_IRQ_RTC_ALM,
			    wm8350_rtc_alarm_handler, 0,
			    "RTC Alarm", wm8350);

	return 0;
}