#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct s3c_hsudc_ep {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  speed; scalar_t__ is_a_peripheral; scalar_t__ is_otg; int /*<<< orphan*/ * ep0; int /*<<< orphan*/  name; int /*<<< orphan*/ * ops; int /*<<< orphan*/  max_speed; } ;
struct s3c_hsudc {int irq; int /*<<< orphan*/  transceiver; int /*<<< orphan*/  uclk; TYPE_2__ gadget; TYPE_1__* ep; int /*<<< orphan*/  lock; int /*<<< orphan*/  regs; TYPE_3__* supplies; void* pd; struct device* dev; } ;
struct s3c24xx_hsudc_platdata {int epnum; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  supply; } ;
struct TYPE_5__ {int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_PHY_TYPE_USB2 ; 
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 void* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct resource*) ; 
 struct s3c_hsudc* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct device*,int,TYPE_3__*) ; 
 int FUNC13 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s3c_hsudc*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  driver_name ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  s3c_hsudc_gadget_ops ; 
 int /*<<< orphan*/  s3c_hsudc_irq ; 
 int /*<<< orphan*/  FUNC21 (struct s3c_hsudc*) ; 
 int /*<<< orphan*/ * s3c_hsudc_supply_names ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (struct device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct s3c_hsudc *hsudc;
	struct s3c24xx_hsudc_platdata *pd = FUNC7(&pdev->dev);
	int ret, i;

	hsudc = FUNC11(&pdev->dev, sizeof(struct s3c_hsudc) +
			sizeof(struct s3c_hsudc_ep) * pd->epnum,
			GFP_KERNEL);
	if (!hsudc)
		return -ENOMEM;

	FUNC19(pdev, dev);
	hsudc->dev = dev;
	hsudc->pd = FUNC7(&pdev->dev);

	hsudc->transceiver = FUNC24(USB_PHY_TYPE_USB2);

	for (i = 0; i < FUNC0(hsudc->supplies); i++)
		hsudc->supplies[i].supply = s3c_hsudc_supply_names[i];

	ret = FUNC12(dev, FUNC0(hsudc->supplies),
				 hsudc->supplies);
	if (ret != 0) {
		FUNC6(dev, "failed to request supplies: %d\n", ret);
		goto err_supplies;
	}

	res = FUNC18(pdev, IORESOURCE_MEM, 0);

	hsudc->regs = FUNC10(&pdev->dev, res);
	if (FUNC1(hsudc->regs)) {
		ret = FUNC3(hsudc->regs);
		goto err_res;
	}

	FUNC22(&hsudc->lock);

	hsudc->gadget.max_speed = USB_SPEED_HIGH;
	hsudc->gadget.ops = &s3c_hsudc_gadget_ops;
	hsudc->gadget.name = FUNC8(dev);
	hsudc->gadget.ep0 = &hsudc->ep[0].ep;
	hsudc->gadget.is_otg = 0;
	hsudc->gadget.is_a_peripheral = 0;
	hsudc->gadget.speed = USB_SPEED_UNKNOWN;

	FUNC21(hsudc);

	ret = FUNC17(pdev, 0);
	if (ret < 0)
		goto err_res;
	hsudc->irq = ret;

	ret = FUNC13(&pdev->dev, hsudc->irq, s3c_hsudc_irq, 0,
				driver_name, hsudc);
	if (ret < 0) {
		FUNC6(dev, "irq request failed\n");
		goto err_res;
	}

	hsudc->uclk = FUNC9(&pdev->dev, "usb-device");
	if (FUNC1(hsudc->uclk)) {
		FUNC6(dev, "failed to find usb-device clock source\n");
		ret = FUNC3(hsudc->uclk);
		goto err_res;
	}
	FUNC5(hsudc->uclk);

	FUNC15();

	FUNC14(hsudc->irq);
	FUNC16();

	ret = FUNC23(&pdev->dev, &hsudc->gadget);
	if (ret)
		goto err_add_udc;

	FUNC20(dev);

	return 0;
err_add_udc:
	FUNC4(hsudc->uclk);
err_res:
	if (!FUNC2(hsudc->transceiver))
		FUNC25(hsudc->transceiver);

err_supplies:
	return ret;
}