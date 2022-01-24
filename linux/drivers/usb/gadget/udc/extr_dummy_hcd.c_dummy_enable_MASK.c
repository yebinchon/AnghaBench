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
struct usb_ep {unsigned int maxpacket; int /*<<< orphan*/  name; int /*<<< orphan*/  comp_desc; } ;
struct usb_endpoint_descriptor {scalar_t__ bDescriptorType; int bEndpointAddress; } ;
struct dummy_hcd {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct dummy_ep {int stream_en; scalar_t__ wedged; scalar_t__ halted; struct usb_endpoint_descriptor const* desc; TYPE_1__ ep; } ;
struct TYPE_4__ {int /*<<< orphan*/  speed; } ;
struct dummy {TYPE_2__ gadget; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESHUTDOWN ; 
 int USB_DIR_IN ; 
 scalar_t__ USB_DT_ENDPOINT ; 
#define  USB_ENDPOINT_XFER_BULK 133 
#define  USB_ENDPOINT_XFER_INT 132 
#define  USB_ENDPOINT_XFER_ISOC 131 
#define  USB_SPEED_FULL 130 
#define  USB_SPEED_HIGH 129 
#define  USB_SPEED_SUPER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ep0name ; 
 struct dummy* FUNC2 (struct dummy_ep*) ; 
 struct dummy_hcd* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct dummy_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct dummy*) ; 
 unsigned int FUNC7 (struct usb_endpoint_descriptor const*) ; 
 int FUNC8 (struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_endpoint_descriptor const*) ; 
 struct dummy_ep* FUNC10 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct usb_ep *_ep,
		const struct usb_endpoint_descriptor *desc)
{
	struct dummy		*dum;
	struct dummy_hcd	*dum_hcd;
	struct dummy_ep		*ep;
	unsigned		max;
	int			retval;

	ep = FUNC10(_ep);
	if (!_ep || !desc || ep->desc || _ep->name == ep0name
			|| desc->bDescriptorType != USB_DT_ENDPOINT)
		return -EINVAL;
	dum = FUNC2(ep);
	if (!dum->driver)
		return -ESHUTDOWN;

	dum_hcd = FUNC3(&dum->gadget);
	if (!FUNC4(dum_hcd))
		return -ESHUTDOWN;

	/*
	 * For HS/FS devices only bits 0..10 of the wMaxPacketSize represent the
	 * maximum packet size.
	 * For SS devices the wMaxPacketSize is limited by 1024.
	 */
	max = FUNC7(desc);

	/* drivers must not request bad settings, since lower levels
	 * (hardware or its drivers) may not check.  some endpoints
	 * can't do iso, many have maxpacket limitations, etc.
	 *
	 * since this "hardware" driver is here to help debugging, we
	 * have some extra sanity checks.  (there could be more though,
	 * especially for "ep9out" style fixed function ones.)
	 */
	retval = -EINVAL;
	switch (FUNC8(desc)) {
	case USB_ENDPOINT_XFER_BULK:
		if (FUNC5(ep->ep.name, "-iso")
				|| FUNC5(ep->ep.name, "-int")) {
			goto done;
		}
		switch (dum->gadget.speed) {
		case USB_SPEED_SUPER:
			if (max == 1024)
				break;
			goto done;
		case USB_SPEED_HIGH:
			if (max == 512)
				break;
			goto done;
		case USB_SPEED_FULL:
			if (max == 8 || max == 16 || max == 32 || max == 64)
				/* we'll fake any legal size */
				break;
			/* save a return statement */
		default:
			goto done;
		}
		break;
	case USB_ENDPOINT_XFER_INT:
		if (FUNC5(ep->ep.name, "-iso")) /* bulk is ok */
			goto done;
		/* real hardware might not handle all packet sizes */
		switch (dum->gadget.speed) {
		case USB_SPEED_SUPER:
		case USB_SPEED_HIGH:
			if (max <= 1024)
				break;
			/* save a return statement */
			/* fall through */
		case USB_SPEED_FULL:
			if (max <= 64)
				break;
			/* save a return statement */
			/* fall through */
		default:
			if (max <= 8)
				break;
			goto done;
		}
		break;
	case USB_ENDPOINT_XFER_ISOC:
		if (FUNC5(ep->ep.name, "-bulk")
				|| FUNC5(ep->ep.name, "-int"))
			goto done;
		/* real hardware might not handle all packet sizes */
		switch (dum->gadget.speed) {
		case USB_SPEED_SUPER:
		case USB_SPEED_HIGH:
			if (max <= 1024)
				break;
			/* save a return statement */
			/* fall through */
		case USB_SPEED_FULL:
			if (max <= 1023)
				break;
			/* save a return statement */
		default:
			goto done;
		}
		break;
	default:
		/* few chips support control except on ep0 */
		goto done;
	}

	_ep->maxpacket = max;
	if (FUNC12(_ep->comp_desc)) {
		if (!FUNC9(desc)) {
			FUNC1(FUNC6(dum), "Can't enable stream support on "
					"non-bulk ep %s\n", _ep->name);
			return -EINVAL;
		}
		ep->stream_en = 1;
	}
	ep->desc = desc;

	FUNC0(FUNC6(dum), "enabled %s (ep%d%s-%s) maxpacket %d stream %s\n",
		_ep->name,
		desc->bEndpointAddress & 0x0f,
		(desc->bEndpointAddress & USB_DIR_IN) ? "in" : "out",
		FUNC11(FUNC8(desc)),
		max, ep->stream_en ? "enabled" : "disabled");

	/* at this point real hardware should be NAKing transfers
	 * to that endpoint, until a buffer is queued to it.
	 */
	ep->halted = ep->wedged = 0;
	retval = 0;
done:
	return retval;
}