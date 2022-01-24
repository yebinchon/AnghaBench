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
struct usba_udc {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {unsigned long name; unsigned long maxpacket; struct usb_endpoint_descriptor const* desc; } ;
struct usba_ep {int index; unsigned long fifo_size; int is_isoc; int is_in; int ept_cfg; scalar_t__ can_dma; TYPE_1__ ep; struct usba_udc* udc; int /*<<< orphan*/  can_isoc; } ;
struct usb_ep {int dummy; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; scalar_t__ bDescriptorType; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG ; 
 int /*<<< orphan*/  CTL_ENB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  DBG_ERR ; 
 int /*<<< orphan*/  DBG_GADGET ; 
 int /*<<< orphan*/  DBG_HW ; 
 int /*<<< orphan*/  DMA_INT ; 
 int EINVAL ; 
 int /*<<< orphan*/  EPT_INT ; 
 int /*<<< orphan*/  EPT_TYPE ; 
 int /*<<< orphan*/  NB_TRANS ; 
 int USBA_AUTO_VALID ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int USBA_EPT_DIR_IN ; 
 int USBA_EPT_ENABLE ; 
 int USBA_EPT_TYPE_BULK ; 
 int USBA_EPT_TYPE_CONTROL ; 
 int USBA_EPT_TYPE_INT ; 
 int USBA_EPT_TYPE_ISO ; 
 int USBA_INTDIS_DMA ; 
 scalar_t__ USB_DT_ENDPOINT ; 
 int USB_ENDPOINT_NUMBER_MASK ; 
#define  USB_ENDPOINT_XFER_BULK 131 
#define  USB_ENDPOINT_XFER_CONTROL 130 
#define  USB_ENDPOINT_XFER_INT 129 
#define  USB_ENDPOINT_XFER_ISOC 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct usba_ep* FUNC4 (struct usb_ep*) ; 
 scalar_t__ FUNC5 (struct usb_endpoint_descriptor const*) ; 
 unsigned long FUNC6 (struct usb_endpoint_descriptor const*) ; 
 unsigned int FUNC7 (struct usb_endpoint_descriptor const*) ; 
 int FUNC8 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC9 (struct usba_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usba_ep*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC12 (struct usba_udc*,int) ; 

__attribute__((used)) static int
FUNC13(struct usb_ep *_ep, const struct usb_endpoint_descriptor *desc)
{
	struct usba_ep *ep = FUNC4(_ep);
	struct usba_udc *udc = ep->udc;
	unsigned long flags, maxpacket;
	unsigned int nr_trans;

	FUNC0(DBG_GADGET, "%s: ep_enable: desc=%p\n", ep->ep.name, desc);

	maxpacket = FUNC6(desc);

	if (((desc->bEndpointAddress & USB_ENDPOINT_NUMBER_MASK) != ep->index)
			|| ep->index == 0
			|| desc->bDescriptorType != USB_DT_ENDPOINT
			|| maxpacket == 0
			|| maxpacket > ep->fifo_size) {
		FUNC0(DBG_ERR, "ep_enable: Invalid argument");
		return -EINVAL;
	}

	ep->is_isoc = 0;
	ep->is_in = 0;

	FUNC0(DBG_ERR, "%s: EPT_CFG = 0x%lx (maxpacket = %lu)\n",
			ep->ep.name, ep->ept_cfg, maxpacket);

	if (FUNC5(desc)) {
		ep->is_in = 1;
		ep->ept_cfg |= USBA_EPT_DIR_IN;
	}

	switch (FUNC8(desc)) {
	case USB_ENDPOINT_XFER_CONTROL:
		ep->ept_cfg |= FUNC1(EPT_TYPE, USBA_EPT_TYPE_CONTROL);
		break;
	case USB_ENDPOINT_XFER_ISOC:
		if (!ep->can_isoc) {
			FUNC0(DBG_ERR, "ep_enable: %s is not isoc capable\n",
					ep->ep.name);
			return -EINVAL;
		}

		/*
		 * Bits 11:12 specify number of _additional_
		 * transactions per microframe.
		 */
		nr_trans = FUNC7(desc);
		if (nr_trans > 3)
			return -EINVAL;

		ep->is_isoc = 1;
		ep->ept_cfg |= FUNC1(EPT_TYPE, USBA_EPT_TYPE_ISO);
		ep->ept_cfg |= FUNC1(NB_TRANS, nr_trans);

		break;
	case USB_ENDPOINT_XFER_BULK:
		ep->ept_cfg |= FUNC1(EPT_TYPE, USBA_EPT_TYPE_BULK);
		break;
	case USB_ENDPOINT_XFER_INT:
		ep->ept_cfg |= FUNC1(EPT_TYPE, USBA_EPT_TYPE_INT);
		break;
	}

	FUNC2(&ep->udc->lock, flags);

	ep->ep.desc = desc;
	ep->ep.maxpacket = maxpacket;

	FUNC10(ep, CFG, ep->ept_cfg);
	FUNC10(ep, CTL_ENB, USBA_EPT_ENABLE);

	if (ep->can_dma) {
		u32 ctrl;

		FUNC12(udc, FUNC1(EPT_INT, 1 << ep->index) |
				      FUNC1(DMA_INT, 1 << ep->index));
		ctrl = USBA_AUTO_VALID | USBA_INTDIS_DMA;
		FUNC10(ep, CTL_ENB, ctrl);
	} else {
		FUNC12(udc, FUNC1(EPT_INT, 1 << ep->index));
	}

	FUNC3(&udc->lock, flags);

	FUNC0(DBG_HW, "EPT_CFG%d after init: %#08lx\n", ep->index,
			(unsigned long)FUNC9(ep, CFG));
	FUNC0(DBG_HW, "INT_ENB after init: %#08lx\n",
			(unsigned long)FUNC11(udc));

	return 0;
}