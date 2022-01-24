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
struct ast_vhub_dev {int /*<<< orphan*/  ep0; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ AST_VHUB_DEV_ISR ; 
 int VHUV_DEV_IRQ_EP0_IN_ACK_STALL ; 
 int VHUV_DEV_IRQ_EP0_OUT_ACK_STALL ; 
 int VHUV_DEV_IRQ_EP0_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

void FUNC4(struct ast_vhub_dev *d)
{
	u32 istat = FUNC2(d->regs + AST_VHUB_DEV_ISR);

	FUNC3(istat, d->regs + AST_VHUB_DEV_ISR);

	if (istat & VHUV_DEV_IRQ_EP0_IN_ACK_STALL)
		FUNC0(&d->ep0, true);
	if (istat & VHUV_DEV_IRQ_EP0_OUT_ACK_STALL)
		FUNC0(&d->ep0, false);
	if (istat & VHUV_DEV_IRQ_EP0_SETUP)
		FUNC1(&d->ep0);
}