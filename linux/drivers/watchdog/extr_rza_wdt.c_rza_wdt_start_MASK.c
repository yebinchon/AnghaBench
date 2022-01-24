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
struct watchdog_device {int /*<<< orphan*/  timeout; } ;
struct rza_wdt {int count; scalar_t__ base; int /*<<< orphan*/  cks; } ;

/* Variables and functions */
 scalar_t__ WRCSR ; 
 int WRCSR_CLEAR_WOVF ; 
 int WRCSR_MAGIC ; 
 int WRCSR_RSTE ; 
 scalar_t__ WTCNT ; 
 int WTCNT_MAGIC ; 
 scalar_t__ WTCSR ; 
 int WTCSR_MAGIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int WTSCR_TME ; 
 int WTSCR_WT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct rza_wdt*,int /*<<< orphan*/ ) ; 
 struct rza_wdt* FUNC3 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct watchdog_device *wdev)
{
	struct rza_wdt *priv = FUNC3(wdev);

	/* Stop timer */
	FUNC4(WTCSR_MAGIC | 0, priv->base + WTCSR);

	/* Must dummy read WRCSR:WOVF at least once before clearing */
	FUNC1(priv->base + WRCSR);
	FUNC4(WRCSR_CLEAR_WOVF, priv->base + WRCSR);

	FUNC2(priv, wdev->timeout);

	FUNC4(WRCSR_MAGIC | WRCSR_RSTE, priv->base + WRCSR);
	FUNC4(WTCNT_MAGIC | priv->count, priv->base + WTCNT);
	FUNC4(WTCSR_MAGIC | WTSCR_WT | WTSCR_TME |
	       FUNC0(priv->cks), priv->base + WTCSR);

	return 0;
}