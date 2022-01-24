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
struct watchdog_device {int dummy; } ;
struct mlxreg_wdt {size_t action_idx; int /*<<< orphan*/  regmap; TYPE_1__* pdata; } ;
struct mlxreg_core_data {int /*<<< orphan*/  bit; int /*<<< orphan*/  mask; int /*<<< orphan*/  reg; } ;
struct TYPE_2__ {struct mlxreg_core_data* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlxreg_wdt* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd)
{
	struct mlxreg_wdt *wdt = FUNC2(wdd);
	struct mlxreg_core_data *reg_data = &wdt->pdata->data[wdt->action_idx];

	return FUNC1(wdt->regmap, reg_data->reg, ~reg_data->mask,
				  FUNC0(reg_data->bit));
}