#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct wm831x_rtc {int alarm_enabled; TYPE_1__* rtc; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  range_max; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  U32_MAX ; 
 int WM831X_RTC_ALM_ENA ; 
 int /*<<< orphan*/  WM831X_RTC_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int,...) ; 
 struct wm831x* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 struct wm831x_rtc* FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct wm831x_rtc*) ; 
 TYPE_1__* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct wm831x_rtc*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  wm831x_alm_irq ; 
 int FUNC11 (struct wm831x*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct wm831x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct wm831x*) ; 
 int /*<<< orphan*/  wm831x_rtc_ops ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct wm831x *wm831x = FUNC3(pdev->dev.parent);
	struct wm831x_rtc *wm831x_rtc;
	int alm_irq = FUNC11(wm831x, FUNC8(pdev, "ALM"));
	int ret = 0;

	wm831x_rtc = FUNC5(&pdev->dev, sizeof(*wm831x_rtc), GFP_KERNEL);
	if (wm831x_rtc == NULL)
		return -ENOMEM;

	FUNC9(pdev, wm831x_rtc);
	wm831x_rtc->wm831x = wm831x;

	ret = FUNC12(wm831x, WM831X_RTC_CONTROL);
	if (ret < 0) {
		FUNC2(&pdev->dev, "Failed to read RTC control: %d\n", ret);
		return ret;
	}
	if (ret & WM831X_RTC_ALM_ENA)
		wm831x_rtc->alarm_enabled = 1;

	FUNC4(&pdev->dev, 1);

	wm831x_rtc->rtc = FUNC7(&pdev->dev);
	if (FUNC0(wm831x_rtc->rtc))
		return FUNC1(wm831x_rtc->rtc);

	wm831x_rtc->rtc->ops = &wm831x_rtc_ops;
	wm831x_rtc->rtc->range_max = U32_MAX;

	ret = FUNC10(wm831x_rtc->rtc);
	if (ret)
		return ret;

	ret = FUNC6(&pdev->dev, alm_irq, NULL,
				wm831x_alm_irq,
				IRQF_TRIGGER_RISING | IRQF_ONESHOT,
				"RTC alarm",
				wm831x_rtc);
	if (ret != 0) {
		FUNC2(&pdev->dev, "Failed to request alarm IRQ %d: %d\n",
			alm_irq, ret);
	}

	FUNC13(wm831x);

	return 0;
}