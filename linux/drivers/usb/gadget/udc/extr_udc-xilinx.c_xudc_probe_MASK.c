#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_17__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; int /*<<< orphan*/ * ep0; int /*<<< orphan*/  speed; int /*<<< orphan*/  max_speed; int /*<<< orphan*/ * ops; } ;
struct xusb_udc {scalar_t__ (* read_fn ) (scalar_t__) ;scalar_t__ dma_enabled; scalar_t__ addr; int /*<<< orphan*/  (* write_fn ) (scalar_t__,scalar_t__,int) ;TYPE_5__ gadget; int /*<<< orphan*/ * dev; int /*<<< orphan*/  lock; TYPE_3__* ep; TYPE_2__* req; } ;
struct xusb_req {int dummy; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_16__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  ep_usb; } ;
struct TYPE_13__ {int /*<<< orphan*/ * buf; } ;
struct TYPE_14__ {TYPE_1__ usb_req; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int STATUSBUFF_SIZE ; 
 scalar_t__ TEST_J ; 
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 scalar_t__ XUSB_ADDRESS_OFFSET ; 
 size_t XUSB_EP_NUMBER_ZERO ; 
 scalar_t__ XUSB_IER_OFFSET ; 
 int XUSB_STATUS_FIFO_BUFF_FREE_MASK ; 
 int XUSB_STATUS_FIFO_BUFF_RDY_MASK ; 
 int XUSB_STATUS_GLOBAL_INTR_MASK ; 
 int XUSB_STATUS_INTR_BUFF_COMP_ALL_MASK ; 
 int XUSB_STATUS_INTR_EVENT_MASK ; 
 int XUSB_STATUS_SETUP_PACKET_MASK ; 
 scalar_t__ XUSB_TESTMODE_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 scalar_t__ FUNC6 (TYPE_4__*,struct resource*) ; 
 void* FUNC7 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xusb_udc*) ; 
 int /*<<< orphan*/  driver_name ; 
 scalar_t__ FUNC9 (struct device_node*,char*) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct xusb_udc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,int) ; 
 int FUNC19 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC20 (struct xusb_udc*) ; 
 int /*<<< orphan*/  xudc_irq ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  xusb_udc_ops ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct resource *res;
	struct xusb_udc *udc;
	int irq;
	int ret;
	u32 ier;
	u8 *buff;

	udc = FUNC7(&pdev->dev, sizeof(*udc), GFP_KERNEL);
	if (!udc)
		return -ENOMEM;

	/* Create a dummy request for GET_STATUS, SET_ADDRESS */
	udc->req = FUNC7(&pdev->dev, sizeof(struct xusb_req),
				GFP_KERNEL);
	if (!udc->req)
		return -ENOMEM;

	buff = FUNC7(&pdev->dev, STATUSBUFF_SIZE, GFP_KERNEL);
	if (!buff)
		return -ENOMEM;

	udc->req->usb_req.buf = buff;

	/* Map the registers */
	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	udc->addr = FUNC6(&pdev->dev, res);
	if (FUNC0(udc->addr))
		return FUNC1(udc->addr);

	irq = FUNC10(pdev, 0);
	if (irq < 0)
		return irq;
	ret = FUNC8(&pdev->dev, irq, xudc_irq, 0,
			       FUNC4(&pdev->dev), udc);
	if (ret < 0) {
		FUNC2(&pdev->dev, "unable to request irq %d", irq);
		goto fail;
	}

	udc->dma_enabled = FUNC9(np, "xlnx,has-builtin-dma");

	/* Setup gadget structure */
	udc->gadget.ops = &xusb_udc_ops;
	udc->gadget.max_speed = USB_SPEED_HIGH;
	udc->gadget.speed = USB_SPEED_UNKNOWN;
	udc->gadget.ep0 = &udc->ep[XUSB_EP_NUMBER_ZERO].ep_usb;
	udc->gadget.name = driver_name;

	FUNC13(&udc->lock);

	/* Check for IP endianness */
	udc->write_fn = xudc_write32_be;
	udc->read_fn = xudc_read32_be;
	udc->write_fn(udc->addr, XUSB_TESTMODE_OFFSET, TEST_J);
	if ((udc->read_fn(udc->addr + XUSB_TESTMODE_OFFSET))
			!= TEST_J) {
		udc->write_fn = xudc_write32;
		udc->read_fn = xudc_read32;
	}
	udc->write_fn(udc->addr, XUSB_TESTMODE_OFFSET, 0);

	FUNC20(udc);

	/* Set device address to 0.*/
	udc->write_fn(udc->addr, XUSB_ADDRESS_OFFSET, 0);

	ret = FUNC19(&pdev->dev, &udc->gadget);
	if (ret)
		goto fail;

	udc->dev = &udc->gadget.dev;

	/* Enable the interrupts.*/
	ier = XUSB_STATUS_GLOBAL_INTR_MASK | XUSB_STATUS_INTR_EVENT_MASK |
	      XUSB_STATUS_FIFO_BUFF_RDY_MASK | XUSB_STATUS_FIFO_BUFF_FREE_MASK |
	      XUSB_STATUS_SETUP_PACKET_MASK |
	      XUSB_STATUS_INTR_BUFF_COMP_ALL_MASK;

	udc->write_fn(udc->addr, XUSB_IER_OFFSET, ier);

	FUNC12(pdev, udc);

	FUNC5(&pdev->dev, "%s at 0x%08X mapped to %p %s\n",
		 driver_name, (u32)res->start, udc->addr,
		 udc->dma_enabled ? "with DMA" : "without DMA");

	return 0;
fail:
	FUNC3(&pdev->dev, "probe failed, %d\n", ret);
	return ret;
}