#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct watchdog_device {TYPE_1__* info; } ;
struct orion_watchdog {scalar_t__ reg; TYPE_2__* data; int /*<<< orphan*/  rstout; scalar_t__ rstout_mask; } ;
struct TYPE_4__ {int /*<<< orphan*/  wdt_enable_bit; int /*<<< orphan*/  rstout_enable_bit; int /*<<< orphan*/  rstout_mask_bit; } ;
struct TYPE_3__ {int options; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER1_ENABLE_BIT ; 
 scalar_t__ TIMER_CTRL ; 
 int WDIOF_PRETIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct orion_watchdog* FUNC2 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdt_dev)
{
	struct orion_watchdog *dev = FUNC2(wdt_dev);
	u32 reg, mask;

	/* Disable reset on watchdog */
	FUNC0(dev->rstout_mask, dev->data->rstout_mask_bit,
					   dev->data->rstout_mask_bit);
	reg = FUNC1(dev->rstout);
	reg &= ~dev->data->rstout_enable_bit;
	FUNC3(reg, dev->rstout);

	/* Disable watchdog timer */
	mask = dev->data->wdt_enable_bit;
	if (wdt_dev->info->options & WDIOF_PRETIMEOUT)
		mask |= TIMER1_ENABLE_BIT;
	FUNC0(dev->reg + TIMER_CTRL, mask, 0);

	return 0;
}