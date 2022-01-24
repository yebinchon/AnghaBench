#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;
struct vudc {int /*<<< orphan*/  lock; int /*<<< orphan*/  urb_queue; int /*<<< orphan*/  ud; TYPE_3__ gadget; TYPE_1__* pdev; } ;
struct TYPE_13__ {unsigned int transfer_buffer_length; unsigned int number_of_packets; } ;
struct TYPE_14__ {TYPE_4__ cmd_submit; } ;
struct TYPE_11__ {scalar_t__ direction; int /*<<< orphan*/  seqnum; int /*<<< orphan*/  ep; } ;
struct usbip_header {TYPE_5__ u; TYPE_2__ base; } ;
struct urbp {int type; int new; int /*<<< orphan*/  urb_entry; TYPE_7__* urb; TYPE_6__* ep; int /*<<< orphan*/  seqnum; } ;
struct TYPE_16__ {int pipe; int /*<<< orphan*/  status; } ;
struct TYPE_15__ {int type; int /*<<< orphan*/  desc; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int EPIPE ; 
 int PIPE_BULK ; 
 int PIPE_CONTROL ; 
 int PIPE_INTERRUPT ; 
 int PIPE_ISOCHRONOUS ; 
 scalar_t__ USBIP_DIR_IN ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
#define  USB_ENDPOINT_XFER_BULK 131 
#define  USB_ENDPOINT_XFER_CONTROL 130 
#define  USB_ENDPOINT_XFER_INT 129 
#define  USB_ENDPOINT_XFER_ISOC 128 
 int /*<<< orphan*/  VUDC_EVENT_ERROR_MALLOC ; 
 int /*<<< orphan*/  VUDC_EVENT_ERROR_TCP ; 
 int FUNC1 (TYPE_7__**,struct usbip_header*,int) ; 
 struct urbp* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct urbp*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int FUNC14 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC15 (struct vudc*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC16 (struct vudc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct vudc *udc,
				 struct usbip_header *pdu)
{
	int ret = 0;
	struct urbp *urb_p;
	u8 address;
	unsigned long flags;

	urb_p = FUNC2();
	if (!urb_p) {
		FUNC12(&udc->ud, VUDC_EVENT_ERROR_MALLOC);
		return -ENOMEM;
	}

	/* base.ep is pipeendpoint(pipe) */
	address = pdu->base.ep;
	if (pdu->base.direction == USBIP_DIR_IN)
		address |= USB_DIR_IN;

	FUNC6(&udc->lock);
	urb_p->ep = FUNC16(udc, address);
	if (!urb_p->ep) {
		/* we don't know the type, there may be isoc data! */
		FUNC3(&udc->pdev->dev, "request to nonexistent endpoint");
		FUNC8(&udc->lock);
		FUNC12(&udc->ud, VUDC_EVENT_ERROR_TCP);
		ret = -EPIPE;
		goto free_urbp;
	}
	urb_p->type = urb_p->ep->type;
	FUNC8(&udc->lock);

	urb_p->new = 1;
	urb_p->seqnum = pdu->base.seqnum;

	if (urb_p->ep->type == USB_ENDPOINT_XFER_ISOC) {
		/* validate packet size and number of packets */
		unsigned int maxp, packets, bytes;

		maxp = FUNC10(urb_p->ep->desc);
		maxp *= FUNC11(urb_p->ep->desc);
		bytes = pdu->u.cmd_submit.transfer_buffer_length;
		packets = FUNC0(bytes, maxp);

		if (pdu->u.cmd_submit.number_of_packets < 0 ||
		    pdu->u.cmd_submit.number_of_packets > packets) {
			FUNC3(&udc->gadget.dev,
				"CMD_SUBMIT: isoc invalid num packets %d\n",
				pdu->u.cmd_submit.number_of_packets);
			ret = -EMSGSIZE;
			goto free_urbp;
		}
	}

	ret = FUNC1(&urb_p->urb, pdu, urb_p->ep->type);
	if (ret) {
		FUNC12(&udc->ud, VUDC_EVENT_ERROR_MALLOC);
		ret = -ENOMEM;
		goto free_urbp;
	}

	urb_p->urb->status = -EINPROGRESS;

	/* FIXME: more pipe setup to please usbip_common */
	urb_p->urb->pipe &= ~(3 << 30);
	switch (urb_p->ep->type) {
	case USB_ENDPOINT_XFER_BULK:
		urb_p->urb->pipe |= (PIPE_BULK << 30);
		break;
	case USB_ENDPOINT_XFER_INT:
		urb_p->urb->pipe |= (PIPE_INTERRUPT << 30);
		break;
	case USB_ENDPOINT_XFER_CONTROL:
		urb_p->urb->pipe |= (PIPE_CONTROL << 30);
		break;
	case USB_ENDPOINT_XFER_ISOC:
		urb_p->urb->pipe |= (PIPE_ISOCHRONOUS << 30);
		break;
	}
	ret = FUNC14(&udc->ud, urb_p->urb);
	if (ret < 0)
		goto free_urbp;

	ret = FUNC13(&udc->ud, urb_p->urb);
	if (ret < 0)
		goto free_urbp;

	FUNC7(&udc->lock, flags);
	FUNC15(udc, jiffies);
	FUNC5(&urb_p->urb_entry, &udc->urb_queue);
	FUNC9(&udc->lock, flags);

	return 0;

free_urbp:
	FUNC4(urb_p);
	return ret;
}