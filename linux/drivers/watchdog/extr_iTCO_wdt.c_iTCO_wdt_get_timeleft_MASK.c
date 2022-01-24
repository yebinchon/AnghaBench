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
 int /*<<< orphan*/  FUNC2 (struct iTCO_wdt_private*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (struct iTCO_wdt_private*,unsigned char) ; 
 struct iTCO_wdt_private* FUNC8 (struct watchdog_device*) ; 

__attribute__((used)) static unsigned int FUNC9(struct watchdog_device *wd_dev)
{
	struct iTCO_wdt_private *p = FUNC8(wd_dev);
	unsigned int val16;
	unsigned char val8;
	unsigned int time_left = 0;

	/* read the TCO Timer */
	if (p->iTCO_version >= 2) {
		FUNC5(&p->io_lock);
		val16 = FUNC4(FUNC1(p));
		val16 &= 0x3ff;
		FUNC6(&p->io_lock);

		time_left = FUNC7(p, val16);
	} else if (p->iTCO_version == 1) {
		FUNC5(&p->io_lock);
		val8 = FUNC3(FUNC1(p));
		val8 &= 0x3f;
		if (!(FUNC4(FUNC0(p)) & 0x0008))
			val8 += (FUNC3(FUNC2(p)) & 0x3f);
		FUNC6(&p->io_lock);

		time_left = FUNC7(p, val8);
	}
	return time_left;
}