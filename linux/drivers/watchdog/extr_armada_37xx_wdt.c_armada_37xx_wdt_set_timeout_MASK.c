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
struct watchdog_device {unsigned int timeout; } ;
struct armada_37xx_watchdog {unsigned int timeout; scalar_t__ clk_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNTR_CTRL_PRESCALE_MIN ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 struct armada_37xx_watchdog* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdt,
				       unsigned int timeout)
{
	struct armada_37xx_watchdog *dev = FUNC1(wdt);

	wdt->timeout = timeout;

	/*
	 * Compute the timeout in clock rate. We use smallest possible
	 * prescaler, which divides the clock rate by 2
	 * (CNTR_CTRL_PRESCALE_MIN).
	 */
	dev->timeout = (u64)dev->clk_rate * timeout;
	FUNC0(dev->timeout, CNTR_CTRL_PRESCALE_MIN);

	return 0;
}