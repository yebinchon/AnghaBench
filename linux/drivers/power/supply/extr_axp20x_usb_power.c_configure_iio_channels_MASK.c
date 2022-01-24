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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct axp20x_usb_power {void* vbus_i; void* vbus_v; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev,
				  struct axp20x_usb_power *power)
{
	power->vbus_v = FUNC2(&pdev->dev, "vbus_v");
	if (FUNC0(power->vbus_v)) {
		if (FUNC1(power->vbus_v) == -ENODEV)
			return -EPROBE_DEFER;
		return FUNC1(power->vbus_v);
	}

	power->vbus_i = FUNC2(&pdev->dev, "vbus_i");
	if (FUNC0(power->vbus_i)) {
		if (FUNC1(power->vbus_i) == -ENODEV)
			return -EPROBE_DEFER;
		return FUNC1(power->vbus_i);
	}

	return 0;
}