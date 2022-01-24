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
typedef  int u32 ;
typedef  int u16 ;
struct usb_ep {int dummy; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bDescriptorType; } ;
struct TYPE_6__ {int enabled; int is_iso; int stalled; int wedged; int desc_mode; int chunk_max; int descs_dma; int dma_conf; int /*<<< orphan*/  g_idx; scalar_t__ regs; scalar_t__ is_in; scalar_t__ descs; scalar_t__ d_last; scalar_t__ d_next; } ;
struct TYPE_5__ {int maxpacket; } ;
struct ast_vhub_ep {scalar_t__ d_idx; TYPE_3__ epn; TYPE_2__ ep; struct ast_vhub* vhub; struct ast_vhub_dev* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  speed; } ;
struct ast_vhub_dev {scalar_t__ index; TYPE_1__ gadget; int /*<<< orphan*/  driver; } ;
struct ast_vhub {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 int AST_VHUB_DESCS_COUNT ; 
 scalar_t__ AST_VHUB_EP_ACK_IER ; 
 scalar_t__ AST_VHUB_EP_ACK_ISR ; 
 scalar_t__ AST_VHUB_EP_CONFIG ; 
 scalar_t__ AST_VHUB_EP_DESC_BASE ; 
 scalar_t__ AST_VHUB_EP_DESC_STATUS ; 
 scalar_t__ AST_VHUB_EP_DMA_CTLSTAT ; 
 scalar_t__ AST_VHUB_EP_TOGGLE ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_ep*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ast_vhub_ep*,char*,int) ; 
 int /*<<< orphan*/  EP_TYPE_BULK ; 
 int /*<<< orphan*/  EP_TYPE_INT ; 
 int /*<<< orphan*/  EP_TYPE_ISO ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  USB_DT_ENDPOINT ; 
#define  USB_ENDPOINT_XFER_BULK 131 
#define  USB_ENDPOINT_XFER_CONTROL 130 
#define  USB_ENDPOINT_XFER_INT 129 
#define  USB_ENDPOINT_XFER_ISOC 128 
 int VHUB_EP_CFG_DIR_OUT ; 
 int VHUB_EP_CFG_ENABLE ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int VHUB_EP_DMA_CTRL_RESET ; 
 int VHUB_EP_DMA_DESC_MODE ; 
 int VHUB_EP_DMA_IN_LONG_MODE ; 
 int VHUB_EP_DMA_SINGLE_STAGE ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ast_vhub_ep* FUNC12 (struct usb_ep*) ; 
 scalar_t__ FUNC13 (struct usb_endpoint_descriptor const*) ; 
 int FUNC14 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC15 (struct usb_endpoint_descriptor const*) ; 
 int FUNC16 (struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC19(struct usb_ep* u_ep,
			       const struct usb_endpoint_descriptor *desc)
{
	struct ast_vhub_ep *ep = FUNC12(u_ep);
	struct ast_vhub_dev *dev;
	struct ast_vhub *vhub;
	u16 maxpacket, type;
	unsigned long flags;
	u32 ep_conf, ep_ier, imask;

	/* Check arguments */
	if (!u_ep || !desc)
		return -EINVAL;

	maxpacket = FUNC14(desc);
	if (!ep->d_idx || !ep->dev ||
	    desc->bDescriptorType != USB_DT_ENDPOINT ||
	    maxpacket == 0 || maxpacket > ep->ep.maxpacket) {
		FUNC0(ep, "Invalid EP enable,d_idx=%d,dev=%p,type=%d,mp=%d/%d\n",
		      ep->d_idx, ep->dev, desc->bDescriptorType,
		      maxpacket, ep->ep.maxpacket);
		return -EINVAL;
	}
	if (ep->d_idx != FUNC15(desc)) {
		FUNC0(ep, "EP number mismatch !\n");
		return -EINVAL;
	}

	if (ep->epn.enabled) {
		FUNC0(ep, "Already enabled\n");
		return -EBUSY;
	}
	dev = ep->dev;
	vhub = ep->vhub;

	/* Check device state */
	if (!dev->driver) {
		FUNC0(ep, "Bogus device state: driver=%p speed=%d\n",
		       dev->driver, dev->gadget.speed);
		return -ESHUTDOWN;
	}

	/* Grab some info from the descriptor */
	ep->epn.is_in = FUNC13(desc);
	ep->ep.maxpacket = maxpacket;
	type = FUNC16(desc);
	ep->epn.d_next = ep->epn.d_last = 0;
	ep->epn.is_iso = false;
	ep->epn.stalled = false;
	ep->epn.wedged = false;

	FUNC0(ep, "Enabling [%s] %s num %d maxpacket=%d\n",
	      ep->epn.is_in ? "in" : "out", FUNC17(type),
	      FUNC15(desc), maxpacket);

	/* Can we use DMA descriptor mode ? */
	ep->epn.desc_mode = ep->epn.descs && ep->epn.is_in;
	if (ep->epn.desc_mode)
		FUNC8(ep->epn.descs, 0, 8 * AST_VHUB_DESCS_COUNT);

	/*
	 * Large send function can send up to 8 packets from
	 * one descriptor with a limit of 4095 bytes.
	 */
	ep->epn.chunk_max = ep->ep.maxpacket;
	if (ep->epn.is_in) {
		ep->epn.chunk_max <<= 3;
		while (ep->epn.chunk_max > 4095)
			ep->epn.chunk_max -= ep->ep.maxpacket;
	}

	switch(type) {
	case USB_ENDPOINT_XFER_CONTROL:
		FUNC0(ep, "Only one control endpoint\n");
		return -EINVAL;
	case USB_ENDPOINT_XFER_INT:
		ep_conf = FUNC5(EP_TYPE_INT);
		break;
	case USB_ENDPOINT_XFER_BULK:
		ep_conf = FUNC5(EP_TYPE_BULK);
		break;
	case USB_ENDPOINT_XFER_ISOC:
		ep_conf = FUNC5(EP_TYPE_ISO);
		ep->epn.is_iso = true;
		break;
	default:
		return -EINVAL;
	}

	/* Encode the rest of the EP config register */
	if (maxpacket < 1024)
		ep_conf |= FUNC4(maxpacket);
	if (!ep->epn.is_in)
		ep_conf |= VHUB_EP_CFG_DIR_OUT;
	ep_conf |= FUNC3(FUNC15(desc));
	ep_conf |= VHUB_EP_CFG_ENABLE;
	ep_conf |= FUNC2(dev->index + 1);
	FUNC1(ep, "config=%08x\n", ep_conf);

	FUNC10(&vhub->lock, flags);

	/* Disable HW and reset DMA */
	FUNC18(0, ep->epn.regs + AST_VHUB_EP_CONFIG);
	FUNC18(VHUB_EP_DMA_CTRL_RESET,
	       ep->epn.regs + AST_VHUB_EP_DMA_CTLSTAT);

	/* Configure and enable */
	FUNC18(ep_conf, ep->epn.regs + AST_VHUB_EP_CONFIG);

	if (ep->epn.desc_mode) {
		/* Clear DMA status, including the DMA read ptr */
		FUNC18(0, ep->epn.regs + AST_VHUB_EP_DESC_STATUS);

		/* Set descriptor base */
		FUNC18(ep->epn.descs_dma,
		       ep->epn.regs + AST_VHUB_EP_DESC_BASE);

		/* Set base DMA config value */
		ep->epn.dma_conf = VHUB_EP_DMA_DESC_MODE;
		if (ep->epn.is_in)
			ep->epn.dma_conf |= VHUB_EP_DMA_IN_LONG_MODE;

		/* First reset and disable all operations */
		FUNC18(ep->epn.dma_conf | VHUB_EP_DMA_CTRL_RESET,
		       ep->epn.regs + AST_VHUB_EP_DMA_CTLSTAT);

		/* Enable descriptor mode */
		FUNC18(ep->epn.dma_conf,
		       ep->epn.regs + AST_VHUB_EP_DMA_CTLSTAT);
	} else {
		/* Set base DMA config value */
		ep->epn.dma_conf = VHUB_EP_DMA_SINGLE_STAGE;

		/* Reset and switch to single stage mode */
		FUNC18(ep->epn.dma_conf | VHUB_EP_DMA_CTRL_RESET,
		       ep->epn.regs + AST_VHUB_EP_DMA_CTLSTAT);
		FUNC18(ep->epn.dma_conf,
		       ep->epn.regs + AST_VHUB_EP_DMA_CTLSTAT);
		FUNC18(0, ep->epn.regs + AST_VHUB_EP_DESC_STATUS);
	}

	/* Cleanup data toggle just in case */
	FUNC18(FUNC7(ep->epn.g_idx),
	       vhub->regs + AST_VHUB_EP_TOGGLE);

	/* Cleanup and enable ACK interrupt */
	imask = FUNC6(ep->epn.g_idx);
	FUNC18(imask, vhub->regs + AST_VHUB_EP_ACK_ISR);
	ep_ier = FUNC9(vhub->regs + AST_VHUB_EP_ACK_IER);
	ep_ier |= imask;
	FUNC18(ep_ier, vhub->regs + AST_VHUB_EP_ACK_IER);

	/* Woot, we are online ! */
	ep->epn.enabled = true;

	FUNC11(&vhub->lock, flags);

	return 0;
}