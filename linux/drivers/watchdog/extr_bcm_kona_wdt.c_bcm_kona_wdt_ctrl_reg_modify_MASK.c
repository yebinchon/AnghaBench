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
struct bcm_kona_wdt {int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SECWDOG_CTRL_REG ; 
 int FUNC0 (struct bcm_kona_wdt*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct bcm_kona_wdt *wdt,
					unsigned mask, unsigned newval)
{
	int val;
	unsigned long flags;
	int ret = 0;

	FUNC1(&wdt->lock, flags);

	val = FUNC0(wdt, SECWDOG_CTRL_REG);
	if (val < 0) {
		ret = val;
	} else {
		val &= ~mask;
		val |= newval;
		FUNC3(val, wdt->base + SECWDOG_CTRL_REG);
	}

	FUNC2(&wdt->lock, flags);

	return ret;
}