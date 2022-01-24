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
typedef  int u64 ;
struct watchdog_device {unsigned int timeout; } ;
struct sp805_wdt {int rate; int load_val; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int LOAD_MAX ; 
 int LOAD_MIN ; 
 unsigned int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sp805_wdt* FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd, unsigned int timeout)
{
	struct sp805_wdt *wdt = FUNC3(wdd);
	u64 load, rate;

	rate = wdt->rate;

	/*
	 * sp805 runs counter with given value twice, after the end of first
	 * counter it gives an interrupt and then starts counter again. If
	 * interrupt already occurred then it resets the system. This is why
	 * load is half of what should be required.
	 */
	load = FUNC0(rate, 2) * timeout - 1;

	load = (load > LOAD_MAX) ? LOAD_MAX : load;
	load = (load < LOAD_MIN) ? LOAD_MIN : load;

	FUNC1(&wdt->lock);
	wdt->load_val = load;
	/* roundup timeout to closest positive integer value */
	wdd->timeout = FUNC0((load + 1) * 2 + (rate / 2), rate);
	FUNC2(&wdt->lock);

	return 0;
}