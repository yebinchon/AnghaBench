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
struct meson_wdt_dev {scalar_t__ wdt_base; TYPE_1__* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  count_unit; int /*<<< orphan*/  terminal_count_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ MESON_WDT_TC ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct meson_wdt_dev* FUNC2 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct watchdog_device *wdt_dev,
				     unsigned int timeout)
{
	struct meson_wdt_dev *meson_wdt = FUNC2(wdt_dev);
	u32 reg;

	reg = FUNC1(meson_wdt->wdt_base + MESON_WDT_TC);
	reg &= ~meson_wdt->data->terminal_count_mask;
	reg |= FUNC0(timeout, meson_wdt->data->count_unit);
	FUNC3(reg, meson_wdt->wdt_base + MESON_WDT_TC);
}