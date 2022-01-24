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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int bus_clk ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  gef_wdt_miscdev ; 
 int /*<<< orphan*/ * gef_wdt_regs ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dev)
{
	int timeout = 10;
	u32 freq;

	bus_clk = 133; /* in MHz */

	freq = FUNC0();
	if (freq != -1)
		bus_clk = freq;

	/* Map devices registers into memory */
	gef_wdt_regs = FUNC4(dev->dev.of_node, 0);
	if (gef_wdt_regs == NULL)
		return -ENOMEM;

	FUNC2(timeout);

	FUNC1();	/* in case timer was already running */

	return FUNC3(&gef_wdt_miscdev);
}