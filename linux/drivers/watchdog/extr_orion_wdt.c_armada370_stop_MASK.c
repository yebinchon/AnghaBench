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
typedef  int /*<<< orphan*/  u32 ;
struct watchdog_device {int dummy; } ;
struct orion_watchdog {TYPE_1__* data; scalar_t__ reg; int /*<<< orphan*/  rstout; } ;
struct TYPE_2__ {int /*<<< orphan*/  wdt_enable_bit; int /*<<< orphan*/  rstout_enable_bit; } ;

/* Variables and functions */
 scalar_t__ TIMER_CTRL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct orion_watchdog* FUNC2 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdt_dev)
{
	struct orion_watchdog *dev = FUNC2(wdt_dev);
	u32 reg;

	/* Disable reset on watchdog */
	reg = FUNC1(dev->rstout);
	reg &= ~dev->data->rstout_enable_bit;
	FUNC3(reg, dev->rstout);

	/* Disable watchdog timer */
	FUNC0(dev->reg + TIMER_CTRL, dev->data->wdt_enable_bit, 0);

	return 0;
}