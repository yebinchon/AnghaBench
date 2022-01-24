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
struct watchdog_device {unsigned int timeout; } ;
struct sbsa_gwdt {unsigned int clk; scalar_t__ control_base; } ;

/* Variables and functions */
 scalar_t__ SBSA_GWDT_WOR ; 
 scalar_t__ action ; 
 struct sbsa_gwdt* FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdd,
				 unsigned int timeout)
{
	struct sbsa_gwdt *gwdt = FUNC0(wdd);

	wdd->timeout = timeout;

	if (action)
		FUNC1(gwdt->clk * timeout,
		       gwdt->control_base + SBSA_GWDT_WOR);
	else
		/*
		 * In the single stage mode, The first signal (WS0) is ignored,
		 * the timeout is (WOR * 2), so the WOR should be configured
		 * to half value of timeout.
		 */
		FUNC1(gwdt->clk / 2 * timeout,
		       gwdt->control_base + SBSA_GWDT_WOR);

	return 0;
}