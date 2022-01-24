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
struct wm8350_power {int /*<<< orphan*/  usb; int /*<<< orphan*/  ac; int /*<<< orphan*/  battery; } ;
struct wm8350 {struct wm8350_power power; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_charger_state ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wm8350*) ; 
 struct wm8350* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct wm8350 *wm8350 = FUNC2(pdev);
	struct wm8350_power *power = &wm8350->power;

	FUNC1(wm8350);
	FUNC0(&pdev->dev, &dev_attr_charger_state);
	FUNC3(power->battery);
	FUNC3(power->ac);
	FUNC3(power->usb);
	return 0;
}