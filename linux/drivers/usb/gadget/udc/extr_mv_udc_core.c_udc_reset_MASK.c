#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mv_udc {int ep_dqh_dma; TYPE_3__* op_regs; scalar_t__ force_fs; TYPE_2__* cap_regs; TYPE_1__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/ * epctrlx; int /*<<< orphan*/ * portsc; int /*<<< orphan*/  eplistaddr; int /*<<< orphan*/  epsetupstat; int /*<<< orphan*/  usbmode; int /*<<< orphan*/  usbcmd; } ;
struct TYPE_5__ {int /*<<< orphan*/  hcsparams; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPCTRL_RX_EP_STALL ; 
 int EPCTRL_TX_EP_STALL ; 
 int ETIMEDOUT ; 
 int HCSPARAMS_PPC ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOOPS_USEC ; 
 int PORTSCX_FORCE_FULL_SPEED_CONNECT ; 
 int PORTSCX_PORT_POWER ; 
 int PORTSCX_W1C_BITS ; 
 int /*<<< orphan*/  RESET_TIMEOUT ; 
 int USBCMD_CTRL_RESET ; 
 int USBCMD_RUN_STOP ; 
 int USBMODE_CTRL_MODE_DEVICE ; 
 int USBMODE_SETUP_LOCK_OFF ; 
 int USB_EP_LIST_ADDRESS_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mv_udc *udc)
{
	unsigned int loops;
	u32 tmp, portsc;

	/* Stop the controller */
	tmp = FUNC2(&udc->op_regs->usbcmd);
	tmp &= ~USBCMD_RUN_STOP;
	FUNC4(tmp, &udc->op_regs->usbcmd);

	/* Reset the controller to get default values */
	FUNC4(USBCMD_CTRL_RESET, &udc->op_regs->usbcmd);

	/* wait for reset to complete */
	loops = FUNC0(RESET_TIMEOUT);
	while (FUNC2(&udc->op_regs->usbcmd) & USBCMD_CTRL_RESET) {
		if (loops == 0) {
			FUNC1(&udc->dev->dev,
				"Wait for RESET completed TIMEOUT\n");
			return -ETIMEDOUT;
		}
		loops--;
		FUNC3(LOOPS_USEC);
	}

	/* set controller to device mode */
	tmp = FUNC2(&udc->op_regs->usbmode);
	tmp |= USBMODE_CTRL_MODE_DEVICE;

	/* turn setup lockout off, require setup tripwire in usbcmd */
	tmp |= USBMODE_SETUP_LOCK_OFF;

	FUNC4(tmp, &udc->op_regs->usbmode);

	FUNC4(0x0, &udc->op_regs->epsetupstat);

	/* Configure the Endpoint List Address */
	FUNC4(udc->ep_dqh_dma & USB_EP_LIST_ADDRESS_MASK,
		&udc->op_regs->eplistaddr);

	portsc = FUNC2(&udc->op_regs->portsc[0]);
	if (FUNC2(&udc->cap_regs->hcsparams) & HCSPARAMS_PPC)
		portsc &= (~PORTSCX_W1C_BITS | ~PORTSCX_PORT_POWER);

	if (udc->force_fs)
		portsc |= PORTSCX_FORCE_FULL_SPEED_CONNECT;
	else
		portsc &= (~PORTSCX_FORCE_FULL_SPEED_CONNECT);

	FUNC4(portsc, &udc->op_regs->portsc[0]);

	tmp = FUNC2(&udc->op_regs->epctrlx[0]);
	tmp &= ~(EPCTRL_TX_EP_STALL | EPCTRL_RX_EP_STALL);
	FUNC4(tmp, &udc->op_regs->epctrlx[0]);

	return 0;
}