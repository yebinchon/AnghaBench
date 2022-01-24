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
struct mv_udc {int /*<<< orphan*/  ep0_dir; int /*<<< orphan*/  ep0_state; TYPE_1__* op_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/ * epctrlx; } ;

/* Variables and functions */
 int EPCTRL_RX_EP_STALL ; 
 int EPCTRL_TX_EP_STALL ; 
 int /*<<< orphan*/  EP_DIR_OUT ; 
 int /*<<< orphan*/  WAIT_FOR_SETUP ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mv_udc *udc)
{
	u32	epctrlx;

	/* set TX and RX to stall */
	epctrlx = FUNC0(&udc->op_regs->epctrlx[0]);
	epctrlx |= EPCTRL_RX_EP_STALL | EPCTRL_TX_EP_STALL;
	FUNC1(epctrlx, &udc->op_regs->epctrlx[0]);

	/* update ep0 state */
	udc->ep0_state = WAIT_FOR_SETUP;
	udc->ep0_dir = EP_DIR_OUT;
}