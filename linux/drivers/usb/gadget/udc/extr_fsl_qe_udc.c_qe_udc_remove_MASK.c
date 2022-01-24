#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct qe_udc {int /*<<< orphan*/  usb_regs; int /*<<< orphan*/  rx_tasklet; int /*<<< orphan*/  usb_irq; TYPE_3__ gadget; struct qe_ep* eps; void* nullp; scalar_t__ nullmap; int /*<<< orphan*/ * done; } ;
struct TYPE_4__ {int maxpacket; } ;
struct qe_ep {int /*<<< orphan*/  txframe; int /*<<< orphan*/  rxbuffer; void* rxbuf_d; scalar_t__ rxbufmap; int /*<<< orphan*/  rxframe; TYPE_1__ ep; int /*<<< orphan*/  rxbase; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* DMA_ADDR_INVALID ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int USB_BDRING_LEN ; 
 int USB_CRC_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct qe_udc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct qe_udc* FUNC9 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *ofdev)
{
	struct qe_udc *udc = FUNC9(ofdev);
	struct qe_ep *ep;
	unsigned int size;
	FUNC0(done);

	FUNC12(&udc->gadget);

	udc->done = &done;
	FUNC10(&udc->rx_tasklet);

	if (udc->nullmap) {
		FUNC4(udc->gadget.dev.parent,
			udc->nullp, 256,
				DMA_TO_DEVICE);
			udc->nullp = DMA_ADDR_INVALID;
	} else {
		FUNC3(udc->gadget.dev.parent,
			udc->nullp, 256,
				DMA_TO_DEVICE);
	}

	ep = &udc->eps[0];
	FUNC1(FUNC2(ep->rxbase));
	size = (ep->ep.maxpacket + USB_CRC_SIZE + 2) * (USB_BDRING_LEN + 1);

	FUNC8(ep->rxframe);
	if (ep->rxbufmap) {
		FUNC4(udc->gadget.dev.parent,
				ep->rxbuf_d, size,
				DMA_FROM_DEVICE);
		ep->rxbuf_d = DMA_ADDR_INVALID;
	} else {
		FUNC3(udc->gadget.dev.parent,
				ep->rxbuf_d, size,
				DMA_FROM_DEVICE);
	}

	FUNC8(ep->rxbuffer);
	FUNC8(ep->txframe);

	FUNC5(udc->usb_irq, udc);
	FUNC7(udc->usb_irq);

	FUNC11(&udc->rx_tasklet);

	FUNC6(udc->usb_regs);

	/* wait for release() of gadget.dev to free udc */
	FUNC13(&done);

	return 0;
}