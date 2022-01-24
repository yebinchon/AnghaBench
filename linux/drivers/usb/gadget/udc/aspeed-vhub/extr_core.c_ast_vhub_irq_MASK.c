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
struct ast_vhub {int /*<<< orphan*/  lock; int /*<<< orphan*/  ep0; TYPE_1__* ports; int /*<<< orphan*/ * epns; scalar_t__ regs; int /*<<< orphan*/  ep0_bufs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AST_VHUB_EP_ACK_ISR ; 
 scalar_t__ AST_VHUB_EP_NACK_ISR ; 
 scalar_t__ AST_VHUB_ISR ; 
 int AST_VHUB_NUM_GEN_EPs ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct ast_vhub*,char*,int,int,int) ; 
 int FUNC1 (int) ; 
 int VHUB_IRQ_BUS_RESET ; 
 int VHUB_IRQ_BUS_RESUME ; 
 int VHUB_IRQ_BUS_SUSPEND ; 
 int VHUB_IRQ_DEVICE1 ; 
 int VHUB_IRQ_DEVICE2 ; 
 int VHUB_IRQ_DEVICE3 ; 
 int VHUB_IRQ_DEVICE4 ; 
 int VHUB_IRQ_DEVICE5 ; 
 int VHUB_IRQ_EP_POOL_ACK_STALL ; 
 int VHUB_IRQ_HUB_EP0_IN_ACK_STALL ; 
 int VHUB_IRQ_HUB_EP0_OUT_ACK_STALL ; 
 int VHUB_IRQ_HUB_EP0_SETUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ast_vhub*) ; 
 int /*<<< orphan*/  FUNC7 (struct ast_vhub*) ; 
 int /*<<< orphan*/  FUNC8 (struct ast_vhub*) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *data)
{
	struct ast_vhub *vhub = data;
	irqreturn_t iret = IRQ_NONE;
	u32 istat;

	/* Stale interrupt while tearing down */
	if (!vhub->ep0_bufs)
		return IRQ_NONE;

	FUNC10(&vhub->lock);

	/* Read and ACK interrupts */
	istat = FUNC9(vhub->regs + AST_VHUB_ISR);
	if (!istat)
		goto bail;
	FUNC12(istat, vhub->regs + AST_VHUB_ISR);
	iret = IRQ_HANDLED;

	FUNC0(vhub, "irq status=%08x, ep_acks=%08x ep_nacks=%08x\n",
	       istat,
	       FUNC9(vhub->regs + AST_VHUB_EP_ACK_ISR),
	       FUNC9(vhub->regs + AST_VHUB_EP_NACK_ISR));

	/* Handle generic EPs first */
	if (istat & VHUB_IRQ_EP_POOL_ACK_STALL) {
		u32 i, ep_acks = FUNC9(vhub->regs + AST_VHUB_EP_ACK_ISR);
		FUNC12(ep_acks, vhub->regs + AST_VHUB_EP_ACK_ISR);

		for (i = 0; ep_acks && i < AST_VHUB_NUM_GEN_EPs; i++) {
			u32 mask = FUNC1(i);
			if (ep_acks & mask) {
				FUNC5(&vhub->epns[i]);
				ep_acks &= ~mask;
			}
		}
	}

	/* Handle device interrupts */
	if (istat & (VHUB_IRQ_DEVICE1 |
		     VHUB_IRQ_DEVICE2 |
		     VHUB_IRQ_DEVICE3 |
		     VHUB_IRQ_DEVICE4 |
		     VHUB_IRQ_DEVICE5)) {
		if (istat & VHUB_IRQ_DEVICE1)
			FUNC2(&vhub->ports[0].dev);
		if (istat & VHUB_IRQ_DEVICE2)
			FUNC2(&vhub->ports[1].dev);
		if (istat & VHUB_IRQ_DEVICE3)
			FUNC2(&vhub->ports[2].dev);
		if (istat & VHUB_IRQ_DEVICE4)
			FUNC2(&vhub->ports[3].dev);
		if (istat & VHUB_IRQ_DEVICE5)
			FUNC2(&vhub->ports[4].dev);
	}

	/* Handle top-level vHub EP0 interrupts */
	if (istat & (VHUB_IRQ_HUB_EP0_OUT_ACK_STALL |
		     VHUB_IRQ_HUB_EP0_IN_ACK_STALL |
		     VHUB_IRQ_HUB_EP0_SETUP)) {
		if (istat & VHUB_IRQ_HUB_EP0_IN_ACK_STALL)
			FUNC3(&vhub->ep0, true);
		if (istat & VHUB_IRQ_HUB_EP0_OUT_ACK_STALL)
			FUNC3(&vhub->ep0, false);
		if (istat & VHUB_IRQ_HUB_EP0_SETUP)
			FUNC4(&vhub->ep0);
	}

	/* Various top level bus events */
	if (istat & (VHUB_IRQ_BUS_RESUME |
		     VHUB_IRQ_BUS_SUSPEND |
		     VHUB_IRQ_BUS_RESET)) {
		if (istat & VHUB_IRQ_BUS_RESUME)
			FUNC7(vhub);
		if (istat & VHUB_IRQ_BUS_SUSPEND)
			FUNC8(vhub);
		if (istat & VHUB_IRQ_BUS_RESET)
			FUNC6(vhub);
	}

 bail:
	FUNC11(&vhub->lock);
	return iret;
}