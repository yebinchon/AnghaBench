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
struct wm8350_power {void* ac; void* battery; void* usb; struct wm8350_charger_policy* policy; } ;
struct wm8350_charger_policy {int dummy; } ;
struct wm8350 {int /*<<< orphan*/  dev; struct wm8350_power power; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  WM8350_CHG_ENA ; 
 int /*<<< orphan*/  WM8350_POWER_MGMT_5 ; 
 int /*<<< orphan*/  dev_attr_charger_state ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct wm8350* FUNC4 (struct platform_device*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  wm8350_ac_desc ; 
 int /*<<< orphan*/  wm8350_battery_desc ; 
 scalar_t__ FUNC7 (struct wm8350*,struct wm8350_charger_policy*) ; 
 int /*<<< orphan*/  FUNC8 (struct wm8350*) ; 
 int /*<<< orphan*/  FUNC9 (struct wm8350*) ; 
 int /*<<< orphan*/  FUNC10 (struct wm8350*) ; 
 int /*<<< orphan*/  FUNC11 (struct wm8350*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm8350_usb_desc ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct wm8350 *wm8350 = FUNC4(pdev);
	struct wm8350_power *power = &wm8350->power;
	struct wm8350_charger_policy *policy = power->policy;
	int ret;

	power->ac = FUNC5(&pdev->dev, &wm8350_ac_desc, NULL);
	if (FUNC0(power->ac))
		return FUNC1(power->ac);

	power->battery = FUNC5(&pdev->dev, &wm8350_battery_desc,
					       NULL);
	if (FUNC0(power->battery)) {
		ret = FUNC1(power->battery);
		goto battery_failed;
	}

	power->usb = FUNC5(&pdev->dev, &wm8350_usb_desc, NULL);
	if (FUNC0(power->usb)) {
		ret = FUNC1(power->usb);
		goto usb_failed;
	}

	ret = FUNC3(&pdev->dev, &dev_attr_charger_state);
	if (ret < 0)
		FUNC2(wm8350->dev, "failed to add charge sysfs: %d\n", ret);
	ret = 0;

	FUNC8(wm8350);
	if (FUNC7(wm8350, policy) == 0) {
		FUNC10(wm8350);
		FUNC11(wm8350, WM8350_POWER_MGMT_5, WM8350_CHG_ENA);
		FUNC9(wm8350);
	}

	return ret;

usb_failed:
	FUNC6(power->battery);
battery_failed:
	FUNC6(power->ac);

	return ret;
}