#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct watchdog_device {int timeout; int pretimeout; } ;
struct TYPE_5__ {TYPE_1__* info; } ;
struct orion_watchdog {int clk_rate; TYPE_3__* data; scalar_t__ rstout_mask; scalar_t__ rstout; scalar_t__ reg; TYPE_2__ wdt; } ;
struct TYPE_6__ {int wdt_enable_bit; int rstout_enable_bit; int rstout_mask_bit; scalar_t__ wdt_counter_offset; } ;
struct TYPE_4__ {int options; } ;

/* Variables and functions */
 int TIMER1_ENABLE_BIT ; 
 scalar_t__ TIMER1_VAL_OFF ; 
 scalar_t__ TIMER_A370_STATUS ; 
 scalar_t__ TIMER_CTRL ; 
 int WDIOF_PRETIMEOUT ; 
 int WDT_A370_EXPIRED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int) ; 
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
	if (dev->wdt.info->options & WDIOF_PRETIMEOUT)
		FUNC3(dev->clk_rate * (wdt_dev->timeout - wdt_dev->pretimeout),
		       dev->reg + TIMER1_VAL_OFF);

	/* Clear the watchdog expiration bit */
	FUNC0(dev->reg + TIMER_A370_STATUS, WDT_A370_EXPIRED, 0);

	/* Enable watchdog timer */
	reg = dev->data->wdt_enable_bit;
	if (dev->wdt.info->options & WDIOF_PRETIMEOUT)
		reg |= TIMER1_ENABLE_BIT;
	FUNC0(dev->reg + TIMER_CTRL, reg, reg);

	/* Enable reset on watchdog */
	reg = FUNC1(dev->rstout);
	reg |= dev->data->rstout_enable_bit;
	FUNC3(reg, dev->rstout);

	FUNC0(dev->rstout_mask, dev->data->rstout_mask_bit, 0);
	return 0;
}