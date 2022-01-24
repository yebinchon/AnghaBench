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
struct watchdog_device {int dummy; } ;
struct sh_wdt {int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  WTCSR_TME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sh_wdt* FUNC7 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC8(struct watchdog_device *wdt_dev)
{
	struct sh_wdt *wdt = FUNC7(wdt_dev);
	unsigned long flags;
	u8 csr;

	FUNC5(&wdt->lock, flags);

	FUNC1(&wdt->timer);

	csr = FUNC3();
	csr &= ~WTCSR_TME;
	FUNC4(csr);

	FUNC6(&wdt->lock, flags);

	FUNC0(wdt->clk);
	FUNC2(wdt->dev);

	return 0;
}