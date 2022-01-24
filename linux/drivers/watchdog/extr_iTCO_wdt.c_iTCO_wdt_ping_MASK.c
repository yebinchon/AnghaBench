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
struct watchdog_device {int dummy; } ;
struct iTCO_wdt_private {int iTCO_version; int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iTCO_wdt_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct iTCO_wdt_private*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct iTCO_wdt_private* FUNC6 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC7(struct watchdog_device *wd_dev)
{
	struct iTCO_wdt_private *p = FUNC6(wd_dev);

	FUNC4(&p->io_lock);

	/* Reload the timer by writing to the TCO Timer Counter register */
	if (p->iTCO_version >= 2) {
		FUNC3(0x01, FUNC1(p));
	} else if (p->iTCO_version == 1) {
		/* Reset the timeout status bit so that the timer
		 * needs to count down twice again before rebooting */
		FUNC3(0x0008, FUNC0(p));	/* write 1 to clear bit */

		FUNC2(0x01, FUNC1(p));
	}

	FUNC5(&p->io_lock);
	return 0;
}