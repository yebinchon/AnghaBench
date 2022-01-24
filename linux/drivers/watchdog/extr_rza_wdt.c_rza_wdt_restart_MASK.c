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
struct rza_wdt {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ WRCSR ; 
 int WRCSR_CLEAR_WOVF ; 
 int WRCSR_MAGIC ; 
 int WRCSR_RSTE ; 
 scalar_t__ WTCNT ; 
 int WTCNT_MAGIC ; 
 scalar_t__ WTCSR ; 
 int WTCSR_MAGIC ; 
 int WTSCR_TME ; 
 int WTSCR_WT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct rza_wdt* FUNC2 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct watchdog_device *wdev, unsigned long action,
			    void *data)
{
	struct rza_wdt *priv = FUNC2(wdev);

	/* Stop timer */
	FUNC4(WTCSR_MAGIC | 0, priv->base + WTCSR);

	/* Must dummy read WRCSR:WOVF at least once before clearing */
	FUNC0(priv->base + WRCSR);
	FUNC4(WRCSR_CLEAR_WOVF, priv->base + WRCSR);

	/*
	 * Start timer with fastest clock source and only 1 clock left before
	 * overflow with reset option enabled.
	 */
	FUNC4(WRCSR_MAGIC | WRCSR_RSTE, priv->base + WRCSR);
	FUNC4(WTCNT_MAGIC | 255, priv->base + WTCNT);
	FUNC4(WTCSR_MAGIC | WTSCR_WT | WTSCR_TME, priv->base + WTCSR);

	/*
	 * Actually make sure the above sequence hits hardware before sleeping.
	 */
	FUNC3();

	/* Wait for WDT overflow (reset) */
	FUNC1(20);

	return 0;
}