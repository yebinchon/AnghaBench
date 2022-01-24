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
struct usb_request {int /*<<< orphan*/  length; int /*<<< orphan*/  buf; int /*<<< orphan*/  complete; } ;
struct usb_ep {int /*<<< orphan*/  name; } ;
struct usb_composite_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct f_sourcesink {int isoc_maxpacket; int iso_qlen; int bulk_qlen; int buflen; int pattern; TYPE_2__ function; struct usb_ep* out_ep; struct usb_ep* in_ep; struct usb_ep* iso_out_ep; struct usb_ep* iso_in_ep; int /*<<< orphan*/  isoc_mult; int /*<<< orphan*/  isoc_maxburst; } ;
struct TYPE_3__ {struct usb_composite_dev* cdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct usb_composite_dev*,char*,char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  USB_SPEED_HIGH 129 
#define  USB_SPEED_SUPER 128 
 int /*<<< orphan*/  FUNC1 (struct usb_ep*,struct usb_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ep*,struct usb_request*) ; 
 int /*<<< orphan*/  source_sink_complete ; 
 struct usb_request* FUNC4 (struct usb_ep*,int) ; 
 int FUNC5 (struct usb_ep*,struct usb_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct f_sourcesink *ss, bool is_in,
		bool is_iso, int speed)
{
	struct usb_ep		*ep;
	struct usb_request	*req;
	int			i, size, qlen, status = 0;

	if (is_iso) {
		switch (speed) {
		case USB_SPEED_SUPER:
			size = ss->isoc_maxpacket *
					(ss->isoc_mult + 1) *
					(ss->isoc_maxburst + 1);
			break;
		case USB_SPEED_HIGH:
			size = ss->isoc_maxpacket * (ss->isoc_mult + 1);
			break;
		default:
			size = ss->isoc_maxpacket > 1023 ?
					1023 : ss->isoc_maxpacket;
			break;
		}
		ep = is_in ? ss->iso_in_ep : ss->iso_out_ep;
		qlen = ss->iso_qlen;
	} else {
		ep = is_in ? ss->in_ep : ss->out_ep;
		qlen = ss->bulk_qlen;
		size = ss->buflen;
	}

	for (i = 0; i < qlen; i++) {
		req = FUNC4(ep, size);
		if (!req)
			return -ENOMEM;

		req->complete = source_sink_complete;
		if (is_in)
			FUNC3(ep, req);
		else if (ss->pattern != 2)
			FUNC2(req->buf, 0x55, req->length);

		status = FUNC5(ep, req, GFP_ATOMIC);
		if (status) {
			struct usb_composite_dev	*cdev;

			cdev = ss->function.config->cdev;
			FUNC0(cdev, "start %s%s %s --> %d\n",
			      is_iso ? "ISO-" : "", is_in ? "IN" : "OUT",
			      ep->name, status);
			FUNC1(ep, req);
			return status;
		}
	}

	return status;
}