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
struct smbb_charger {int status; int /*<<< orphan*/  dev; int /*<<< orphan*/  statlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQCHIP_STATE_LINE_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct smbb_charger *chg, int irq, int flag)
{
	bool state;
	int ret;

	ret = FUNC2(irq, IRQCHIP_STATE_LINE_LEVEL, &state);
	if (ret < 0) {
		FUNC1(chg->dev, "failed to read irq line\n");
		return;
	}

	FUNC3(&chg->statlock);
	if (state)
		chg->status |= flag;
	else
		chg->status &= ~flag;
	FUNC4(&chg->statlock);

	FUNC0(chg->dev, "status = %03lx\n", chg->status);
}