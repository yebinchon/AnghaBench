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
struct TYPE_2__ {int /*<<< orphan*/  default_ticks; int /*<<< orphan*/  timer; scalar_t__ queue; int /*<<< orphan*/  stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU5WDT_EXTENT ; 
 scalar_t__ CPU5WDT_STATUS_REG ; 
 int EBUSY ; 
 int /*<<< orphan*/  PFX ; 
 TYPE_1__ cpu5wdt_device ; 
 int /*<<< orphan*/  cpu5wdt_misc ; 
 int /*<<< orphan*/  cpu5wdt_trigger ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ port ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ticks ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC9(void)
{
	unsigned int val;
	int err;

	if (verbose)
		FUNC3("port=0x%x, verbose=%i\n", port, verbose);

	FUNC1(&cpu5wdt_device.stop);
	cpu5wdt_device.queue = 0;
	FUNC8(&cpu5wdt_device.timer, cpu5wdt_trigger, 0);
	cpu5wdt_device.default_ticks = ticks;

	if (!FUNC7(port, CPU5WDT_EXTENT, PFX)) {
		FUNC4("request_region failed\n");
		err = -EBUSY;
		goto no_port;
	}

	/* watchdog reboot? */
	val = FUNC0(port + CPU5WDT_STATUS_REG);
	val = (val >> 2) & 1;
	if (!val)
		FUNC5("sorry, was my fault\n");

	err = FUNC2(&cpu5wdt_misc);
	if (err < 0) {
		FUNC4("misc_register failed\n");
		goto no_misc;
	}


	FUNC5("init success\n");
	return 0;

no_misc:
	FUNC6(port, CPU5WDT_EXTENT);
no_port:
	return err;
}