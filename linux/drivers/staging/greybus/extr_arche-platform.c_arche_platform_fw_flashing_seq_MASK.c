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
struct arche_platform_drvdata {scalar_t__ state; int is_reset_act_hi; int /*<<< orphan*/  svc_reset; int /*<<< orphan*/  dev; int /*<<< orphan*/  svc_ref_clk; int /*<<< orphan*/  svc_sysboot; } ;

/* Variables and functions */
 scalar_t__ ARCHE_PLATFORM_STATE_FW_FLASHING ; 
 int /*<<< orphan*/  FUNC0 (struct arche_platform_drvdata*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int
FUNC7(struct arche_platform_drvdata *arche_pdata)
{
	int ret;

	if (arche_pdata->state == ARCHE_PLATFORM_STATE_FW_FLASHING)
		return 0;

	FUNC3(arche_pdata->dev, "Switching to FW flashing state\n");

	FUNC5(arche_pdata->svc_reset, arche_pdata->is_reset_act_hi);

	FUNC4(arche_pdata->svc_sysboot, 1);

	FUNC6(100, 200);

	ret = FUNC1(arche_pdata->svc_ref_clk);
	if (ret) {
		FUNC2(arche_pdata->dev, "failed to enable svc_ref_clk: %d\n",
			ret);
		return ret;
	}

	FUNC5(arche_pdata->svc_reset,	!arche_pdata->is_reset_act_hi);

	FUNC0(arche_pdata, ARCHE_PLATFORM_STATE_FW_FLASHING);

	return 0;
}