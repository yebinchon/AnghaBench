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
typedef  int /*<<< orphan*/  u8 ;
struct timer_list {int dummy; } ;
struct sh_wdt {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  WTCSR_IOVF ; 
 int /*<<< orphan*/  clock_division_ratio ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct sh_wdt* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next_heartbeat ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 
 struct sh_wdt* wdt ; 

__attribute__((used)) static void FUNC10(struct timer_list *t)
{
	struct sh_wdt *wdt = FUNC1(wdt, t, timer);
	unsigned long flags;

	FUNC7(&wdt->lock, flags);
	if (FUNC9(jiffies, next_heartbeat)) {
		u8 csr;

		csr = FUNC4();
		csr &= ~WTCSR_IOVF;
		FUNC6(csr);

		FUNC5(0);

		FUNC2(&wdt->timer, FUNC3(clock_division_ratio));
	} else
		FUNC0(wdt->dev, "Heartbeat lost! Will not ping "
		         "the watchdog\n");
	FUNC8(&wdt->lock, flags);
}