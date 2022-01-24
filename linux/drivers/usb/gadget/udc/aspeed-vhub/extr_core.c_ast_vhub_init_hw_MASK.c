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
struct TYPE_2__ {int buf_dma; } ;
struct ast_vhub {scalar_t__ regs; scalar_t__ force_usb1; TYPE_1__ ep0; } ;

/* Variables and functions */
 scalar_t__ AST_VHUB_CONF ; 
 scalar_t__ AST_VHUB_CTRL ; 
 int AST_VHUB_DESCS_COUNT ; 
 scalar_t__ AST_VHUB_EP0_CTRL ; 
 scalar_t__ AST_VHUB_EP0_DATA ; 
 scalar_t__ AST_VHUB_EP1_CTRL ; 
 scalar_t__ AST_VHUB_EP1_STS_CHG ; 
 scalar_t__ AST_VHUB_EP_ACK_IER ; 
 scalar_t__ AST_VHUB_EP_ACK_ISR ; 
 scalar_t__ AST_VHUB_EP_NACK_IER ; 
 scalar_t__ AST_VHUB_EP_NACK_ISR ; 
 scalar_t__ AST_VHUB_IER ; 
 scalar_t__ AST_VHUB_SW_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ast_vhub*,char*) ; 
 int VHUB_CTRL_FULL_SPEED_ONLY ; 
 int VHUB_CTRL_ISO_RSP_CTRL ; 
 int VHUB_CTRL_LONG_DESC ; 
 int VHUB_CTRL_PHY_CLK ; 
 int VHUB_CTRL_PHY_RESET_DIS ; 
 int VHUB_CTRL_SPLIT_IN ; 
 int VHUB_CTRL_UPSTREAM_CONNECT ; 
 int VHUB_EP1_CTRL_ENABLE ; 
 int VHUB_EP1_CTRL_RESET_TOGGLE ; 
 int VHUB_EP_IRQ_ALL ; 
 int VHUB_IRQ_BUS_RESET ; 
 int VHUB_IRQ_BUS_RESUME ; 
 int VHUB_IRQ_BUS_SUSPEND ; 
 int VHUB_IRQ_EP_POOL_ACK_STALL ; 
 int VHUB_IRQ_HUB_EP0_IN_ACK_STALL ; 
 int VHUB_IRQ_HUB_EP0_OUT_ACK_STALL ; 
 int VHUB_IRQ_HUB_EP0_SETUP ; 
 int VHUB_SW_RESET_ALL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

void FUNC4(struct ast_vhub *vhub)
{
	u32 ctrl;

	FUNC1(vhub,"(Re)Starting HW ...\n");

	/* Enable PHY */
	ctrl = VHUB_CTRL_PHY_CLK |
		VHUB_CTRL_PHY_RESET_DIS;

       /*
	* We do *NOT* set the VHUB_CTRL_CLK_STOP_SUSPEND bit
	* to stop the logic clock during suspend because
	* it causes the registers to become inaccessible and
	* we haven't yet figured out a good wayt to bring the
	* controller back into life to issue a wakeup.
	*/

	/*
	 * Set some ISO & split control bits according to Aspeed
	 * recommendation
	 *
	 * VHUB_CTRL_ISO_RSP_CTRL: When set tells the HW to respond
	 * with 0 bytes data packet to ISO IN endpoints when no data
	 * is available.
	 *
	 * VHUB_CTRL_SPLIT_IN: This makes a SOF complete a split IN
	 * transaction.
	 */
	ctrl |= VHUB_CTRL_ISO_RSP_CTRL | VHUB_CTRL_SPLIT_IN;
	FUNC3(ctrl, vhub->regs + AST_VHUB_CTRL);
	FUNC2(1);

	/* Set descriptor ring size */
	if (AST_VHUB_DESCS_COUNT == 256) {
		ctrl |= VHUB_CTRL_LONG_DESC;
		FUNC3(ctrl, vhub->regs + AST_VHUB_CTRL);
	} else {
		FUNC0(AST_VHUB_DESCS_COUNT != 32);
	}

	/* Reset all devices */
	FUNC3(VHUB_SW_RESET_ALL, vhub->regs + AST_VHUB_SW_RESET);
	FUNC2(1);
	FUNC3(0, vhub->regs + AST_VHUB_SW_RESET);

	/* Disable and cleanup EP ACK/NACK interrupts */
	FUNC3(0, vhub->regs + AST_VHUB_EP_ACK_IER);
	FUNC3(0, vhub->regs + AST_VHUB_EP_NACK_IER);
	FUNC3(VHUB_EP_IRQ_ALL, vhub->regs + AST_VHUB_EP_ACK_ISR);
	FUNC3(VHUB_EP_IRQ_ALL, vhub->regs + AST_VHUB_EP_NACK_ISR);

	/* Default settings for EP0, enable HW hub EP1 */
	FUNC3(0, vhub->regs + AST_VHUB_EP0_CTRL);
	FUNC3(VHUB_EP1_CTRL_RESET_TOGGLE |
	       VHUB_EP1_CTRL_ENABLE,
	       vhub->regs + AST_VHUB_EP1_CTRL);
	FUNC3(0, vhub->regs + AST_VHUB_EP1_STS_CHG);

	/* Configure EP0 DMA buffer */
	FUNC3(vhub->ep0.buf_dma, vhub->regs + AST_VHUB_EP0_DATA);

	/* Clear address */
	FUNC3(0, vhub->regs + AST_VHUB_CONF);

	/* Pullup hub (activate on host) */
	if (vhub->force_usb1)
		ctrl |= VHUB_CTRL_FULL_SPEED_ONLY;

	ctrl |= VHUB_CTRL_UPSTREAM_CONNECT;
	FUNC3(ctrl, vhub->regs + AST_VHUB_CTRL);

	/* Enable some interrupts */
	FUNC3(VHUB_IRQ_HUB_EP0_IN_ACK_STALL |
	       VHUB_IRQ_HUB_EP0_OUT_ACK_STALL |
	       VHUB_IRQ_HUB_EP0_SETUP |
	       VHUB_IRQ_EP_POOL_ACK_STALL |
	       VHUB_IRQ_BUS_RESUME |
	       VHUB_IRQ_BUS_SUSPEND |
	       VHUB_IRQ_BUS_RESET,
	       vhub->regs + AST_VHUB_IER);
}