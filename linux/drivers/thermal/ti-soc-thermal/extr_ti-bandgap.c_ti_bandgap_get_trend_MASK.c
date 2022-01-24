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
typedef  int /*<<< orphan*/  u32 ;
struct ti_bandgap {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; TYPE_2__* conf; } ;
struct temp_sensor_registers {int /*<<< orphan*/  bgap_dtemp_mask; int /*<<< orphan*/  ctrl_dtemp_2; int /*<<< orphan*/  ctrl_dtemp_1; } ;
struct TYPE_4__ {TYPE_1__* sensors; } ;
struct TYPE_3__ {struct temp_sensor_registers* registers; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FREEZE_BIT ; 
 int /*<<< orphan*/  HISTORY_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (struct ti_bandgap*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_bandgap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bgap_mask_ctrl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  mask_freeze_mask ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ti_bandgap*,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (struct ti_bandgap*,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_bandgap*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ti_bandgap*,int) ; 

int FUNC9(struct ti_bandgap *bgp, int id, int *trend)
{
	struct temp_sensor_registers *tsr;
	u32 temp1, temp2, reg1, reg2;
	int t1, t2, interval, ret = 0;

	ret = FUNC8(bgp, id);
	if (ret)
		goto exit;

	if (!FUNC1(bgp, HISTORY_BUFFER) ||
	    !FUNC1(bgp, FREEZE_BIT)) {
		ret = -ENOTSUPP;
		goto exit;
	}

	FUNC3(&bgp->lock);

	tsr = bgp->conf->sensors[id].registers;

	/* Freeze and read the last 2 valid readings */
	FUNC0(bgp, id, bgap_mask_ctrl, mask_freeze_mask, 1);
	reg1 = tsr->ctrl_dtemp_1;
	reg2 = tsr->ctrl_dtemp_2;

	/* read temperature from history buffer */
	temp1 = FUNC7(bgp, reg1);
	temp1 &= tsr->bgap_dtemp_mask;

	temp2 = FUNC7(bgp, reg2);
	temp2 &= tsr->bgap_dtemp_mask;

	/* Convert from adc values to mCelsius temperature */
	ret = FUNC5(bgp, temp1, &t1);
	if (ret)
		goto unfreeze;

	ret = FUNC5(bgp, temp2, &t2);
	if (ret)
		goto unfreeze;

	/* Fetch the update interval */
	ret = FUNC6(bgp, id, &interval);
	if (ret)
		goto unfreeze;

	/* Set the interval to 1 ms if bandgap counter delay is not set */
	if (interval == 0)
		interval = 1;

	*trend = (t1 - t2) / interval;

	FUNC2(bgp->dev, "The temperatures are t1 = %d and t2 = %d and trend =%d\n",
		t1, t2, *trend);

unfreeze:
	FUNC0(bgp, id, bgap_mask_ctrl, mask_freeze_mask, 0);
	FUNC4(&bgp->lock);
exit:
	return ret;
}