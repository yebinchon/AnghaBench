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
typedef  int u32 ;
struct otg_fsm {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  otgsc; } ;

/* Variables and functions */
 int OTGSC_CTRL_VBUS_CHARGE ; 
 int OTGSC_CTRL_VBUS_DISCHARGE ; 
 int OTGSC_INTSTS_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 TYPE_1__* usb_dr_regs ; 

void FUNC2(struct otg_fsm *fsm, int on)
{
	u32 tmp;

	tmp = FUNC0(&usb_dr_regs->otgsc) & ~OTGSC_INTSTS_MASK;

	if (on)
		/* stop discharging, start charging */
		tmp = (tmp & ~OTGSC_CTRL_VBUS_DISCHARGE) |
			OTGSC_CTRL_VBUS_CHARGE;
	else
		/* stop charging */
		tmp &= ~OTGSC_CTRL_VBUS_CHARGE;

	FUNC1(tmp, &usb_dr_regs->otgsc);
}