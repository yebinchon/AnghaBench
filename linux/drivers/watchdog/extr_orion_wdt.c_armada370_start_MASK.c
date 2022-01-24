#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct watchdog_device {int timeout; } ;
struct orion_watchdog {int clk_rate; scalar_t__ rstout; TYPE_1__* data; scalar_t__ reg; } ;
struct TYPE_2__ {int rstout_enable_bit; int /*<<< orphan*/  wdt_enable_bit; scalar_t__ wdt_counter_offset; } ;

/* Variables and functions */
 scalar_t__ TIMER_A370_STATUS ; 
 scalar_t__ TIMER_CTRL ; 
 int /*<<< orphan*/  WDT_A370_EXPIRED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 struct orion_watchdog* FUNC2 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdt_dev)
{
	struct orion_watchdog *dev = FUNC2(wdt_dev);
	u32 reg;

	/* Set watchdog duration */
	FUNC3(dev->clk_rate * wdt_dev->timeout,
	       dev->reg + dev->data->wdt_counter_offset);

	/* Clear the watchdog expiration bit */
	FUNC0(dev->reg + TIMER_A370_STATUS, WDT_A370_EXPIRED, 0);

	/* Enable watchdog timer */
	FUNC0(dev->reg + TIMER_CTRL, dev->data->wdt_enable_bit,
						dev->data->wdt_enable_bit);

	/* Enable reset on watchdog */
	reg = FUNC1(dev->rstout);
	reg |= dev->data->rstout_enable_bit;
	FUNC3(reg, dev->rstout);
	return 0;
}