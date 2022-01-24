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
struct bcm_kona_wdt {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int SECWDOG_COUNT_MASK ; 
 int /*<<< orphan*/  SECWDOG_COUNT_REG ; 
 unsigned int FUNC0 (int,struct bcm_kona_wdt*) ; 
 int FUNC1 (struct bcm_kona_wdt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct bcm_kona_wdt* FUNC4 (struct watchdog_device*) ; 

__attribute__((used)) static unsigned int FUNC5(struct watchdog_device *wdog)
{
	struct bcm_kona_wdt *wdt = FUNC4(wdog);
	int val;
	unsigned long flags;

	FUNC2(&wdt->lock, flags);
	val = FUNC1(wdt, SECWDOG_COUNT_REG);
	FUNC3(&wdt->lock, flags);

	if (val < 0)
		return val;

	return FUNC0(val & SECWDOG_COUNT_MASK, wdt);
}