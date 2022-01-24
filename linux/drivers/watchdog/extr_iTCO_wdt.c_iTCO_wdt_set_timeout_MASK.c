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
struct watchdog_device {unsigned int timeout; } ;
struct iTCO_wdt_private {int iTCO_version; int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct iTCO_wdt_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct iTCO_wdt_private*) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct iTCO_wdt_private*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct iTCO_wdt_private* FUNC9 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC10(struct watchdog_device *wd_dev, unsigned int t)
{
	struct iTCO_wdt_private *p = FUNC9(wd_dev);
	unsigned int val16;
	unsigned char val8;
	unsigned int tmrval;

	tmrval = FUNC6(p, t);

	/* For TCO v1 the timer counts down twice before rebooting */
	if (p->iTCO_version == 1)
		tmrval /= 2;

	/* from the specs: */
	/* "Values of 0h-3h are ignored and should not be attempted" */
	if (tmrval < 0x04)
		return -EINVAL;
	if ((p->iTCO_version >= 2 && tmrval > 0x3ff) ||
	    (p->iTCO_version == 1 && tmrval > 0x03f))
		return -EINVAL;

	/* Write new heartbeat to watchdog */
	if (p->iTCO_version >= 2) {
		FUNC7(&p->io_lock);
		val16 = FUNC3(FUNC1(p));
		val16 &= 0xfc00;
		val16 |= tmrval;
		FUNC5(val16, FUNC1(p));
		val16 = FUNC3(FUNC1(p));
		FUNC8(&p->io_lock);

		if ((val16 & 0x3ff) != tmrval)
			return -EINVAL;
	} else if (p->iTCO_version == 1) {
		FUNC7(&p->io_lock);
		val8 = FUNC2(FUNC0(p));
		val8 &= 0xc0;
		val8 |= (tmrval & 0xff);
		FUNC4(val8, FUNC0(p));
		val8 = FUNC2(FUNC0(p));
		FUNC8(&p->io_lock);

		if ((val8 & 0x3f) != tmrval)
			return -EINVAL;
	}

	wd_dev->timeout = t;
	return 0;
}