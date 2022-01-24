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
struct wm831x_power {int /*<<< orphan*/  usb; int /*<<< orphan*/  wall; int /*<<< orphan*/  battery; scalar_t__ have_battery; int /*<<< orphan*/  usb_notify; scalar_t__ usb_phy; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (int,struct wm831x_power*) ; 
 struct wm831x_power* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 char** wm831x_bat_irqs ; 
 int FUNC6 (struct wm831x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct wm831x_power *wm831x_power = FUNC2(pdev);
	struct wm831x *wm831x = wm831x_power->wm831x;
	int irq, i;

	if (wm831x_power->usb_phy) {
		FUNC5(wm831x_power->usb_phy,
					&wm831x_power->usb_notify);
	}

	for (i = 0; i < FUNC0(wm831x_bat_irqs); i++) {
		irq = FUNC6(wm831x, 
				 FUNC3(pdev,
							 wm831x_bat_irqs[i]));
		FUNC1(irq, wm831x_power);
	}

	irq = FUNC6(wm831x, FUNC3(pdev, "PWR SRC"));
	FUNC1(irq, wm831x_power);

	irq = FUNC6(wm831x, FUNC3(pdev, "SYSLO"));
	FUNC1(irq, wm831x_power);

	if (wm831x_power->have_battery)
		FUNC4(wm831x_power->battery);
	FUNC4(wm831x_power->wall);
	FUNC4(wm831x_power->usb);
	return 0;
}