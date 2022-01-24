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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ast_vhub {int /*<<< orphan*/ * ep0_bufs; int /*<<< orphan*/  ep0_bufs_dma; int /*<<< orphan*/  lock; scalar_t__ clk; scalar_t__ regs; TYPE_1__* ports; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AST_VHUB_CTRL ; 
 int AST_VHUB_EP0_MAX_PACKET ; 
 scalar_t__ AST_VHUB_IER ; 
 scalar_t__ AST_VHUB_ISR ; 
 int AST_VHUB_NUM_PORTS ; 
 int VHUB_CTRL_PHY_CLK ; 
 int VHUB_CTRL_PHY_RESET_DIS ; 
 int VHUB_IRQ_ACK_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ast_vhub* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct ast_vhub *vhub = FUNC3(pdev);
	unsigned long flags;
	int i;

	if (!vhub || !vhub->regs)
		return 0;

	/* Remove devices */
	for (i = 0; i < AST_VHUB_NUM_PORTS; i++)
		FUNC0(&vhub->ports[i].dev);

	FUNC4(&vhub->lock, flags);

	/* Mask & ack all interrupts  */
	FUNC6(0, vhub->regs + AST_VHUB_IER);
	FUNC6(VHUB_IRQ_ACK_ALL, vhub->regs + AST_VHUB_ISR);

	/* Pull device, leave PHY enabled */
	FUNC6(VHUB_CTRL_PHY_CLK |
	       VHUB_CTRL_PHY_RESET_DIS,
	       vhub->regs + AST_VHUB_CTRL);

	if (vhub->clk)
		FUNC1(vhub->clk);

	FUNC5(&vhub->lock, flags);

	if (vhub->ep0_bufs)
		FUNC2(&pdev->dev,
				  AST_VHUB_EP0_MAX_PACKET *
				  (AST_VHUB_NUM_PORTS + 1),
				  vhub->ep0_bufs,
				  vhub->ep0_bufs_dma);
	vhub->ep0_bufs = NULL;

	return 0;
}