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
struct TYPE_4__ {int /*<<< orphan*/  psy; } ;
struct pm2xxx_charger {int /*<<< orphan*/  lpn_pin; TYPE_2__ ac_chg; int /*<<< orphan*/  regu; int /*<<< orphan*/  charger_wq; TYPE_1__* pdata; int /*<<< orphan*/  dev; } ;
struct i2c_client {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  gpio_irq_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pm2xxx_charger*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct pm2xxx_charger* FUNC7 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC8 (struct pm2xxx_charger*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *i2c_client)
{
	struct pm2xxx_charger *pm2 = FUNC7(i2c_client);

	/* Disable pm_runtime */
	FUNC10(pm2->dev);
	/* Disable AC charging */
	FUNC9(&pm2->ac_chg, false, 0, 0);

	/* Disable wake by pm interrupt */
	FUNC1(FUNC6(pm2->pdata->gpio_irq_number));

	/* Disable interrupts */
	FUNC3(FUNC6(pm2->pdata->gpio_irq_number), pm2);

	/* Delete the work queue */
	FUNC0(pm2->charger_wq);

	FUNC2();

	/* disable the regulator */
	FUNC12(pm2->regu);

	FUNC11(pm2->ac_chg.psy);

	if (FUNC5(pm2->lpn_pin))
		FUNC4(pm2->lpn_pin);

	FUNC8(pm2);

	return 0;
}