#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  dma_mask; int /*<<< orphan*/  coherent_dma_mask; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  dma_mask; TYPE_3__* parent; } ;
struct TYPE_7__ {int is_selfpowered; TYPE_4__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  speed; int /*<<< orphan*/ * ep0; int /*<<< orphan*/ * ops; } ;
struct nbu2ss_udc {TYPE_2__ gadget; TYPE_1__* ep; struct platform_device* pdev; scalar_t__ mA; int /*<<< orphan*/  devstate; TYPE_3__* dev; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  driver_name ; 
 int /*<<< orphan*/  FUNC3 (struct nbu2ss_udc*) ; 
 int /*<<< orphan*/  nbu2ss_gadget_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev,
				   struct nbu2ss_udc *udc)
{
	FUNC4(&udc->lock);
	udc->dev = &pdev->dev;

	udc->gadget.is_selfpowered = 1;
	udc->devstate = USB_STATE_NOTATTACHED;
	udc->pdev = pdev;
	udc->mA = 0;

	udc->pdev->dev.coherent_dma_mask = FUNC0(32);

	/* init Endpoint */
	FUNC3(udc);

	/* init Gadget */
	udc->gadget.ops = &nbu2ss_gadget_ops;
	udc->gadget.ep0 = &udc->ep[0].ep;
	udc->gadget.speed = USB_SPEED_UNKNOWN;
	udc->gadget.name = driver_name;
	/* udc->gadget.is_dualspeed = 1; */

	FUNC2(&udc->gadget.dev);

	FUNC1(&udc->gadget.dev, "gadget");
	udc->gadget.dev.parent = &pdev->dev;
	udc->gadget.dev.dma_mask = pdev->dev.dma_mask;

	return 0;
}