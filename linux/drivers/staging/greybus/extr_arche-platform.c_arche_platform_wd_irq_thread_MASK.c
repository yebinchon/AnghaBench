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
struct arche_platform_drvdata {scalar_t__ wake_detect_state; int /*<<< orphan*/  wake_lock; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  WD_STATE_COLDBOOT_START ; 
 scalar_t__ WD_STATE_COLDBOOT_TRIG ; 
 int /*<<< orphan*/  WD_STATE_IDLE ; 
 int /*<<< orphan*/  apb_cold_boot ; 
 int /*<<< orphan*/  apb_poweroff ; 
 int /*<<< orphan*/  FUNC0 (struct arche_platform_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *devid)
{
	struct arche_platform_drvdata *arche_pdata = devid;
	unsigned long flags;

	FUNC3(&arche_pdata->wake_lock, flags);
	if (arche_pdata->wake_detect_state != WD_STATE_COLDBOOT_TRIG) {
		/* Something is wrong */
		FUNC4(&arche_pdata->wake_lock, flags);
		return IRQ_HANDLED;
	}

	FUNC0(arche_pdata,
					     WD_STATE_COLDBOOT_START);
	FUNC4(&arche_pdata->wake_lock, flags);

	/* It should complete power cycle, so first make sure it is poweroff */
	FUNC2(arche_pdata->dev, NULL, apb_poweroff);

	/* Bring APB out of reset: cold boot sequence */
	FUNC2(arche_pdata->dev, NULL, apb_cold_boot);

	/* Enable HUB3613 into HUB mode. */
	if (FUNC5(true))
		FUNC1(arche_pdata->dev, "failed to control hub device\n");

	FUNC3(&arche_pdata->wake_lock, flags);
	FUNC0(arche_pdata, WD_STATE_IDLE);
	FUNC4(&arche_pdata->wake_lock, flags);

	return IRQ_HANDLED;
}