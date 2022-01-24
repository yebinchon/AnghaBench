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
typedef  int u32 ;
struct ti_bandgap {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ti_bandgap*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  bgap_mask_ctrl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  mask_counter_delay_mask ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ti_bandgap *bgp, int id,
					  u32 interval)
{
	int rval;

	switch (interval) {
	case 0: /* Immediate conversion */
		rval = 0x0;
		break;
	case 1: /* Conversion after ever 1ms */
		rval = 0x1;
		break;
	case 10: /* Conversion after ever 10ms */
		rval = 0x2;
		break;
	case 100: /* Conversion after ever 100ms */
		rval = 0x3;
		break;
	case 250: /* Conversion after ever 250ms */
		rval = 0x4;
		break;
	case 500: /* Conversion after ever 500ms */
		rval = 0x5;
		break;
	default:
		FUNC1(bgp->dev, "Delay %d ms is not supported\n", interval);
		return -EINVAL;
	}

	FUNC2(&bgp->lock);
	FUNC0(bgp, id, bgap_mask_ctrl, mask_counter_delay_mask, rval);
	FUNC3(&bgp->lock);

	return 0;
}