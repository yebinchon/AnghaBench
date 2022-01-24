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
struct smbb_charger {int /*<<< orphan*/  bat_psy; int /*<<< orphan*/  statlock; int /*<<< orphan*/  status; scalar_t__ addr; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ SMBB_BAT_TEMP_STATUS ; 
 int /*<<< orphan*/  STATUS_BAT_HOT ; 
 int /*<<< orphan*/  STATUS_BAT_OK ; 
 unsigned int TEMP_STATUS_HOT ; 
 unsigned int TEMP_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *_data)
{
	struct smbb_charger *chg = _data;
	unsigned int val;
	int rc;

	rc = FUNC3(chg->regmap, chg->addr + SMBB_BAT_TEMP_STATUS, &val);
	if (rc)
		return IRQ_HANDLED;

	FUNC0(&chg->statlock);
	if (val & TEMP_STATUS_OK) {
		chg->status |= STATUS_BAT_OK;
	} else {
		chg->status &= ~STATUS_BAT_OK;
		if (val & TEMP_STATUS_HOT)
			chg->status |= STATUS_BAT_HOT;
	}
	FUNC1(&chg->statlock);

	FUNC2(chg->bat_psy);
	return IRQ_HANDLED;
}