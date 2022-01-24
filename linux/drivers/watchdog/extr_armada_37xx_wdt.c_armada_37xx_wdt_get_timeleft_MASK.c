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
struct armada_37xx_watchdog {int /*<<< orphan*/  clk_rate; } ;

/* Variables and functions */
 unsigned int CNTR_CTRL_PRESCALE_MIN ; 
 int /*<<< orphan*/  CNTR_ID_WDOG ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct armada_37xx_watchdog*,int /*<<< orphan*/ ) ; 
 struct armada_37xx_watchdog* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static unsigned int FUNC3(struct watchdog_device *wdt)
{
	struct armada_37xx_watchdog *dev = FUNC2(wdt);
	u64 res;

	res = FUNC1(dev, CNTR_ID_WDOG) * CNTR_CTRL_PRESCALE_MIN;
	FUNC0(res, dev->clk_rate);

	return res;
}