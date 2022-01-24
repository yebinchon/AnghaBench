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
struct watchdog_device {int dummy; } ;
struct meson_gxbb_wdt {scalar_t__ reg_base; } ;

/* Variables and functions */
 scalar_t__ GXBB_WDT_RSET_REG ; 
 struct meson_gxbb_wdt* FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdt_dev)
{
	struct meson_gxbb_wdt *data = FUNC0(wdt_dev);

	FUNC1(0, data->reg_base + GXBB_WDT_RSET_REG);

	return 0;
}