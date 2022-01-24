#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ep_list; } ;
struct usba_udc {int irq; int num_ep; struct clk* usba_ep; TYPE_1__ gadget; struct platform_device* pdev; int /*<<< orphan*/ * vbus_pin; struct clk* hclk; struct clk* pclk; int /*<<< orphan*/  vbus_mutex; int /*<<< orphan*/  lock; struct clk* fifo; struct clk* regs; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  CTRL_IOMEM_ID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FIFO_IOMEM_ID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  USBA_DISABLE_MASK ; 
 int /*<<< orphan*/  USBA_VBUS_IRQFLAGS ; 
 struct clk* FUNC3 (struct platform_device*,struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int FUNC5 (struct clk*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,struct resource*,struct clk*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 struct clk* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC11 (int /*<<< orphan*/ *,struct resource*) ; 
 struct usba_udc* FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct usba_udc*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct usba_udc*,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (struct usba_udc*,struct clk*) ; 
 TYPE_1__ usba_gadget_template ; 
 int /*<<< orphan*/  FUNC25 (struct usba_udc*) ; 
 int /*<<< orphan*/  usba_udc_irq ; 
 int /*<<< orphan*/  usba_vbus_irq_thread ; 
 int /*<<< orphan*/  FUNC26 (struct usba_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct resource *res;
	struct clk *pclk, *hclk;
	struct usba_udc *udc;
	int irq, ret, i;

	udc = FUNC12(&pdev->dev, sizeof(*udc), GFP_KERNEL);
	if (!udc)
		return -ENOMEM;

	udc->gadget = usba_gadget_template;
	FUNC0(&udc->gadget.ep_list);

	res = FUNC19(pdev, IORESOURCE_MEM, CTRL_IOMEM_ID);
	udc->regs = FUNC11(&pdev->dev, res);
	if (FUNC1(udc->regs))
		return FUNC2(udc->regs);
	FUNC7(&pdev->dev, "MMIO registers at %pR mapped at %p\n",
		 res, udc->regs);

	res = FUNC19(pdev, IORESOURCE_MEM, FIFO_IOMEM_ID);
	udc->fifo = FUNC11(&pdev->dev, res);
	if (FUNC1(udc->fifo))
		return FUNC2(udc->fifo);
	FUNC7(&pdev->dev, "FIFO at %pR mapped at %p\n", res, udc->fifo);

	irq = FUNC18(pdev, 0);
	if (irq < 0)
		return irq;

	pclk = FUNC10(&pdev->dev, "pclk");
	if (FUNC1(pclk))
		return FUNC2(pclk);
	hclk = FUNC10(&pdev->dev, "hclk");
	if (FUNC1(hclk))
		return FUNC2(hclk);

	FUNC21(&udc->lock);
	FUNC17(&udc->vbus_mutex);
	udc->pdev = pdev;
	udc->pclk = pclk;
	udc->hclk = hclk;

	FUNC20(pdev, udc);

	/* Make sure we start from a clean slate */
	ret = FUNC5(pclk);
	if (ret) {
		FUNC6(&pdev->dev, "Unable to enable pclk, aborting.\n");
		return ret;
	}

	FUNC26(udc, CTRL, USBA_DISABLE_MASK);
	FUNC4(pclk);

	udc->usba_ep = FUNC3(pdev, udc);

	FUNC22(udc, 0);

	if (FUNC1(udc->usba_ep))
		return FUNC2(udc->usba_ep);

	ret = FUNC13(&pdev->dev, irq, usba_udc_irq, 0,
				"atmel_usba_udc", udc);
	if (ret) {
		FUNC6(&pdev->dev, "Cannot request irq %d (error %d)\n",
			irq, ret);
		return ret;
	}
	udc->irq = irq;

	if (udc->vbus_pin) {
		FUNC16(FUNC15(udc->vbus_pin), IRQ_NOAUTOEN);
		ret = FUNC14(&pdev->dev,
				FUNC15(udc->vbus_pin), NULL,
				usba_vbus_irq_thread, USBA_VBUS_IRQFLAGS,
				"atmel_usba_udc", udc);
		if (ret) {
			udc->vbus_pin = NULL;
			FUNC8(&udc->pdev->dev,
				 "failed to request vbus irq; "
				 "assuming always on\n");
		}
	}

	ret = FUNC23(&pdev->dev, &udc->gadget);
	if (ret)
		return ret;
	FUNC9(&pdev->dev, 1);

	FUNC25(udc);
	for (i = 1; i < udc->num_ep; i++)
		FUNC24(udc, &udc->usba_ep[i]);

	return 0;
}