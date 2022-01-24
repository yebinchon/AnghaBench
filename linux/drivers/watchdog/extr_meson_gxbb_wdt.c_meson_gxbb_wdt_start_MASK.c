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
 int GXBB_WDT_CTRL_EN ; 
 scalar_t__ GXBB_WDT_CTRL_REG ; 
 int FUNC0 (scalar_t__) ; 
 struct meson_gxbb_wdt* FUNC1 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdt_dev)
{
	struct meson_gxbb_wdt *data = FUNC1(wdt_dev);

	FUNC2(FUNC0(data->reg_base + GXBB_WDT_CTRL_REG) | GXBB_WDT_CTRL_EN,
	       data->reg_base + GXBB_WDT_CTRL_REG);

	return 0;
}