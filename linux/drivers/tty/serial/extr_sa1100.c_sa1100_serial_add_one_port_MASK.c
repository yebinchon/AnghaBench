#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * dev; } ;
struct sa1100_port {TYPE_1__ port; int /*<<< orphan*/ * gpios; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct sa1100_port*) ; 
 int /*<<< orphan*/  sa1100_reg ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct sa1100_port *sport, struct platform_device *dev)
{
	sport->port.dev = &dev->dev;

	// mctrl_gpio_init() requires that the GPIO driver supports interrupts,
	// but we need to support GPIO drivers for hardware that has no such
	// interrupts.  Use mctrl_gpio_init_noauto() instead.
	sport->gpios = FUNC3(sport->port.dev, 0);
	if (FUNC0(sport->gpios)) {
		int err = FUNC1(sport->gpios);

		FUNC2(sport->port.dev, "failed to get mctrl gpios: %d\n",
			err);

		if (err == -EPROBE_DEFER)
			return err;

		sport->gpios = NULL;
	}

	FUNC4(dev, sport);

	return FUNC5(&sa1100_reg, &sport->port);
}