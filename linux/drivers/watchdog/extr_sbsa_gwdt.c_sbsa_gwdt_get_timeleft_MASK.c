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
typedef  unsigned int u64 ;
struct watchdog_device {int dummy; } ;
struct sbsa_gwdt {int /*<<< orphan*/  clk; scalar_t__ control_base; } ;

/* Variables and functions */
 scalar_t__ SBSA_GWDT_WCS ; 
 unsigned int SBSA_GWDT_WCS_WS0 ; 
 scalar_t__ SBSA_GWDT_WCV ; 
 scalar_t__ SBSA_GWDT_WOR ; 
 int /*<<< orphan*/  action ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 struct sbsa_gwdt* FUNC4 (struct watchdog_device*) ; 

__attribute__((used)) static unsigned int FUNC5(struct watchdog_device *wdd)
{
	struct sbsa_gwdt *gwdt = FUNC4(wdd);
	u64 timeleft = 0;

	/*
	 * In the single stage mode, if WS0 is deasserted
	 * (watchdog is in the first stage),
	 * timeleft = WOR + (WCV - system counter)
	 */
	if (!action &&
	    !(FUNC3(gwdt->control_base + SBSA_GWDT_WCS) & SBSA_GWDT_WCS_WS0))
		timeleft += FUNC3(gwdt->control_base + SBSA_GWDT_WOR);

	timeleft += FUNC2(gwdt->control_base + SBSA_GWDT_WCV) -
		    FUNC0();

	FUNC1(timeleft, gwdt->clk);

	return timeleft;
}