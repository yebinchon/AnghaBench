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
struct watchdog_device {int dummy; } ;
struct sp805_wdt {int /*<<< orphan*/  rate; int /*<<< orphan*/  lock; scalar_t__ load_val; scalar_t__ base; } ;

/* Variables and functions */
 int INT_MASK ; 
 scalar_t__ WDTRIS ; 
 scalar_t__ WDTVALUE ; 
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sp805_wdt* FUNC4 (struct watchdog_device*) ; 

__attribute__((used)) static unsigned int FUNC5(struct watchdog_device *wdd)
{
	struct sp805_wdt *wdt = FUNC4(wdd);
	u64 load;

	FUNC2(&wdt->lock);
	load = FUNC1(wdt->base + WDTVALUE);

	/*If the interrupt is inactive then time left is WDTValue + WDTLoad. */
	if (!(FUNC1(wdt->base + WDTRIS) & INT_MASK))
		load += wdt->load_val + 1;
	FUNC3(&wdt->lock);

	return FUNC0(load, wdt->rate);
}