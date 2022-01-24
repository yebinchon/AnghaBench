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
struct arche_platform_drvdata {scalar_t__ state; int /*<<< orphan*/  is_reset_act_hi; int /*<<< orphan*/  svc_reset; int /*<<< orphan*/  svc_ref_clk; int /*<<< orphan*/  wake_lock; int /*<<< orphan*/  wake_detect_irq; } ;

/* Variables and functions */
 scalar_t__ ARCHE_PLATFORM_STATE_FW_FLASHING ; 
 scalar_t__ ARCHE_PLATFORM_STATE_OFF ; 
 int /*<<< orphan*/  WD_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct arche_platform_drvdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct arche_platform_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct arche_platform_drvdata *arche_pdata)
{
	unsigned long flags;

	if (arche_pdata->state == ARCHE_PLATFORM_STATE_OFF)
		return;

	/* If in fw_flashing mode, then no need to repeate things again */
	if (arche_pdata->state != ARCHE_PLATFORM_STATE_FW_FLASHING) {
		FUNC3(arche_pdata->wake_detect_irq);

		FUNC4(&arche_pdata->wake_lock, flags);
		FUNC1(arche_pdata,
						     WD_STATE_IDLE);
		FUNC5(&arche_pdata->wake_lock, flags);
	}

	FUNC2(arche_pdata->svc_ref_clk);

	/* As part of exit, put APB back in reset state */
	FUNC6(arche_pdata->svc_reset,	arche_pdata->is_reset_act_hi);

	FUNC0(arche_pdata, ARCHE_PLATFORM_STATE_OFF);
}