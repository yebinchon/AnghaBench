#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_4__ {TYPE_1__ dev; int /*<<< orphan*/  max_speed; int /*<<< orphan*/ * ops; int /*<<< orphan*/  name; } ;
struct vudc {TYPE_2__ gadget; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GADGET_NAME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct vudc*) ; 
 int FUNC1 (struct vudc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vudc*) ; 
 struct vudc* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct vudc*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  vgadget_ops ; 

int FUNC6(struct platform_device *pdev)
{
	struct vudc *udc;
	int ret = -ENOMEM;

	udc = FUNC3(sizeof(*udc), GFP_KERNEL);
	if (!udc)
		goto out;

	udc->gadget.name = GADGET_NAME;
	udc->gadget.ops = &vgadget_ops;
	udc->gadget.max_speed = USB_SPEED_HIGH;
	udc->gadget.dev.parent = &pdev->dev;
	udc->pdev = pdev;

	ret = FUNC1(udc);
	if (ret)
		goto err_init_vudc_hw;

	ret = FUNC5(&pdev->dev, &udc->gadget);
	if (ret < 0)
		goto err_add_udc;

	FUNC4(pdev, udc);

	return ret;

err_add_udc:
	FUNC0(udc);
err_init_vudc_hw:
	FUNC2(udc);
out:
	return ret;
}