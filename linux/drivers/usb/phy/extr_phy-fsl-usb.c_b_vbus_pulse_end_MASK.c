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
struct TYPE_2__ {int /*<<< orphan*/  fsm; } ;

/* Variables and functions */
 int /*<<< orphan*/  b_srp_wait_tmr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* fsl_otg_dev ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(unsigned long foo)
{
	FUNC1(&fsl_otg_dev->fsm, 0);

	/*
	 * As USB3300 using the same a_sess_vld and b_sess_vld voltage
	 * we need to discharge the bus for a while to distinguish
	 * residual voltage of vbus pulsing and A device pull up
	 */
	FUNC2(1);
	FUNC0(&fsl_otg_dev->fsm, b_srp_wait_tmr);
}