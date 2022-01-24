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
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (struct device*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	int err;
	int gpio;

	if (!dev->of_node)
		return;

	gpio = FUNC3(dev->of_node, "samsung,vbus-gpio", 0);
	if (!FUNC2(gpio))
		return;

	err = FUNC1(dev, gpio, GPIOF_OUT_INIT_HIGH,
				    "ehci_vbus_gpio");
	if (err)
		FUNC0(dev, "can't request ehci vbus gpio %d", gpio);
}