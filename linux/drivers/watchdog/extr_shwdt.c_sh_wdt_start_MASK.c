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
typedef  int u8 ;
struct watchdog_device {int dummy; } ;
struct sh_wdt {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HZ ; 
 int RSTCSR_RSTS ; 
 int WTCSR_RSTS ; 
 int WTCSR_TME ; 
 int WTCSR_WT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int clock_division_ratio ; 
 int heartbeat ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ next_heartbeat ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sh_wdt* FUNC11 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC12(struct watchdog_device *wdt_dev)
{
	struct sh_wdt *wdt = FUNC11(wdt_dev);
	unsigned long flags;
	u8 csr;

	FUNC3(wdt->dev);
	FUNC0(wdt->clk);

	FUNC9(&wdt->lock, flags);

	next_heartbeat = jiffies + (heartbeat * HZ);
	FUNC1(&wdt->timer, FUNC2(clock_division_ratio));

	csr = FUNC4();
	csr |= WTCSR_WT | clock_division_ratio;
	FUNC7(csr);

	FUNC6(0);

	/*
	 * These processors have a bit of an inconsistent initialization
	 * process.. starting with SH-3, RSTS was moved to WTCSR, and the
	 * RSTCSR register was removed.
	 *
	 * On the SH-2 however, in addition with bits being in different
	 * locations, we must deal with RSTCSR outright..
	 */
	csr = FUNC4();
	csr |= WTCSR_TME;
	csr &= ~WTCSR_RSTS;
	FUNC7(csr);

#ifdef CONFIG_CPU_SH2
	csr = sh_wdt_read_rstcsr();
	csr &= ~RSTCSR_RSTS;
	sh_wdt_write_rstcsr(csr);
#endif
	FUNC10(&wdt->lock, flags);

	return 0;
}