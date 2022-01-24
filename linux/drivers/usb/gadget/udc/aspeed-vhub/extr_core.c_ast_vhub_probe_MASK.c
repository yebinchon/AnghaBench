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
typedef  int /*<<< orphan*/  u32 ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ast_vhub {int force_usb1; int irq; int /*<<< orphan*/  ep0; scalar_t__ ep0_bufs_dma; int /*<<< orphan*/  ep0_bufs; scalar_t__ regs; scalar_t__ clk; struct platform_device* pdev; int /*<<< orphan*/  lock; } ;
typedef  enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;

/* Variables and functions */
 int AST_VHUB_EP0_MAX_PACKET ; 
 scalar_t__ AST_VHUB_IER ; 
 scalar_t__ AST_VHUB_ISR ; 
 int AST_VHUB_NUM_PORTS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ast_vhub*,char*,struct resource*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ast_vhub*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int USB_SPEED_HIGH ; 
 int USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  VHUB_IRQ_ACK_ALL ; 
 int FUNC4 (struct ast_vhub*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ast_vhub*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ast_vhub*) ; 
 int /*<<< orphan*/  FUNC7 (struct ast_vhub*) ; 
 int /*<<< orphan*/  ast_vhub_irq ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,struct resource*) ; 
 struct ast_vhub* FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ast_vhub*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct ast_vhub*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	enum usb_device_speed max_speed;
	struct ast_vhub *vhub;
	struct resource *res;
	int i, rc = 0;

	vhub = FUNC14(&pdev->dev, sizeof(*vhub), GFP_KERNEL);
	if (!vhub)
		return -ENOMEM;

	FUNC20(&vhub->lock);
	vhub->pdev = pdev;

	res = FUNC18(pdev, IORESOURCE_MEM, 0);
	vhub->regs = FUNC13(&pdev->dev, res);
	if (FUNC0(vhub->regs)) {
		FUNC10(&pdev->dev, "Failed to map resources\n");
		return FUNC1(vhub->regs);
	}
	FUNC2(vhub, "vHub@%pR mapped @%p\n", res, vhub->regs);

	FUNC19(pdev, vhub);

	vhub->clk = FUNC12(&pdev->dev, NULL);
	if (FUNC0(vhub->clk)) {
		rc = FUNC1(vhub->clk);
		goto err;
	}
	rc = FUNC9(vhub->clk);
	if (rc) {
		FUNC10(&pdev->dev, "Error couldn't enable clock (%d)\n", rc);
		goto err;
	}

	/* Check if we need to limit the HW to USB1 */
	max_speed = FUNC21(&pdev->dev);
	if (max_speed != USB_SPEED_UNKNOWN && max_speed < USB_SPEED_HIGH)
		vhub->force_usb1 = true;

	/* Mask & ack all interrupts before installing the handler */
	FUNC22(0, vhub->regs + AST_VHUB_IER);
	FUNC22(VHUB_IRQ_ACK_ALL, vhub->regs + AST_VHUB_ISR);

	/* Find interrupt and install handler */
	vhub->irq = FUNC17(pdev, 0);
	if (vhub->irq < 0) {
		rc = vhub->irq;
		goto err;
	}
	rc = FUNC15(&pdev->dev, vhub->irq, ast_vhub_irq, 0,
			      KBUILD_MODNAME, vhub);
	if (rc) {
		FUNC10(&pdev->dev, "Failed to request interrupt\n");
		goto err;
	}

	/*
	 * Allocate DMA buffers for all EP0s in one chunk,
	 * one per port and one for the vHub itself
	 */
	vhub->ep0_bufs = FUNC16(&pdev->dev,
					    AST_VHUB_EP0_MAX_PACKET *
					    (AST_VHUB_NUM_PORTS + 1),
					    &vhub->ep0_bufs_dma, GFP_KERNEL);
	if (!vhub->ep0_bufs) {
		FUNC10(&pdev->dev, "Failed to allocate EP0 DMA buffers\n");
		rc = -ENOMEM;
		goto err;
	}
	FUNC3(vhub, "EP0 DMA buffers @%p (DMA 0x%08x)\n",
		vhub->ep0_bufs, (u32)vhub->ep0_bufs_dma);

	/* Init vHub EP0 */
	FUNC5(vhub, &vhub->ep0, NULL);

	/* Init devices */
	for (i = 0; i < AST_VHUB_NUM_PORTS && rc == 0; i++)
		rc = FUNC4(vhub, i);
	if (rc)
		goto err;

	/* Init hub emulation */
	FUNC6(vhub);

	/* Initialize HW */
	FUNC7(vhub);

	FUNC11(&pdev->dev, "Initialized virtual hub in USB%d mode\n",
		 vhub->force_usb1 ? 1 : 2);

	return 0;
 err:
	FUNC8(pdev);
	return rc;
}