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
struct smb347_charger {int charging_enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ enable_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_A ; 
 int /*<<< orphan*/  CMD_A_CHG_ENABLED ; 
 scalar_t__ SMB347_CHG_ENABLE_SW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct smb347_charger *smb, bool enable)
{
	int ret = 0;

	if (smb->pdata->enable_control != SMB347_CHG_ENABLE_SW) {
		FUNC0(smb->dev, "charging enable/disable in SW disabled\n");
		return 0;
	}

	FUNC1(&smb->lock);
	if (smb->charging_enabled != enable) {
		ret = FUNC3(smb->regmap, CMD_A, CMD_A_CHG_ENABLED,
					 enable ? CMD_A_CHG_ENABLED : 0);
		if (!ret)
			smb->charging_enabled = enable;
	}
	FUNC2(&smb->lock);
	return ret;
}