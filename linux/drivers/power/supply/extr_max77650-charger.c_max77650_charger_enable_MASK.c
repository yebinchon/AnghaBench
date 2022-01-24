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
struct max77650_charger_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX77650_CHARGER_CHG_EN_MASK ; 
 int /*<<< orphan*/  MAX77650_CHARGER_ENABLED ; 
 int /*<<< orphan*/  MAX77650_REG_CNFG_CHG_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct max77650_charger_data *chg)
{
	int rv;

	rv = FUNC1(chg->map,
				MAX77650_REG_CNFG_CHG_B,
				MAX77650_CHARGER_CHG_EN_MASK,
				MAX77650_CHARGER_ENABLED);
	if (rv)
		FUNC0(chg->dev, "unable to enable the charger: %d\n", rv);

	return rv;
}