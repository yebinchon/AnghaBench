#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct usb_ss_ep_comp_descriptor {scalar_t__ bDescriptorType; int bMaxBurst; int bmAttributes; int /*<<< orphan*/  wBytesPerInterval; scalar_t__ bLength; } ;
struct TYPE_7__ {int /*<<< orphan*/  bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_8__ {int bLength; int bMaxBurst; int bmAttributes; int /*<<< orphan*/  wBytesPerInterval; scalar_t__ bDescriptorType; } ;
struct usb_host_endpoint {TYPE_1__ desc; TYPE_6__ ss_ep_comp; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ USB_DT_SS_ENDPOINT_COMP ; 
 int USB_DT_SS_EP_COMP_SIZE ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,struct usb_ss_ep_comp_descriptor*,int) ; 
 int FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,int,int,int,struct usb_host_endpoint*,unsigned char*,int) ; 

__attribute__((used)) static void FUNC12(struct device *ddev, int cfgno,
		int inum, int asnum, struct usb_host_endpoint *ep,
		unsigned char *buffer, int size)
{
	struct usb_ss_ep_comp_descriptor *desc;
	int max_tx;

	/* The SuperSpeed endpoint companion descriptor is supposed to
	 * be the first thing immediately following the endpoint descriptor.
	 */
	desc = (struct usb_ss_ep_comp_descriptor *) buffer;

	if (desc->bDescriptorType != USB_DT_SS_ENDPOINT_COMP ||
			size < USB_DT_SS_EP_COMP_SIZE) {
		FUNC3(ddev, "No SuperSpeed endpoint companion for config %d "
				" interface %d altsetting %d ep %d: "
				"using minimum values\n",
				cfgno, inum, asnum, ep->desc.bEndpointAddress);

		/* Fill in some default values.
		 * Leave bmAttributes as zero, which will mean no streams for
		 * bulk, and isoc won't support multiple bursts of packets.
		 * With bursts of only one packet, and a Mult of 1, the max
		 * amount of data moved per endpoint service interval is one
		 * packet.
		 */
		ep->ss_ep_comp.bLength = USB_DT_SS_EP_COMP_SIZE;
		ep->ss_ep_comp.bDescriptorType = USB_DT_SS_ENDPOINT_COMP;
		if (FUNC10(&ep->desc) ||
				FUNC9(&ep->desc))
			ep->ss_ep_comp.wBytesPerInterval =
					ep->desc.wMaxPacketSize;
		return;
	}
	buffer += desc->bLength;
	size -= desc->bLength;
	FUNC5(&ep->ss_ep_comp, desc, USB_DT_SS_EP_COMP_SIZE);

	/* Check the various values */
	if (FUNC8(&ep->desc) && desc->bMaxBurst != 0) {
		FUNC3(ddev, "Control endpoint with bMaxBurst = %d in "
				"config %d interface %d altsetting %d ep %d: "
				"setting to zero\n", desc->bMaxBurst,
				cfgno, inum, asnum, ep->desc.bEndpointAddress);
		ep->ss_ep_comp.bMaxBurst = 0;
	} else if (desc->bMaxBurst > 15) {
		FUNC3(ddev, "Endpoint with bMaxBurst = %d in "
				"config %d interface %d altsetting %d ep %d: "
				"setting to 15\n", desc->bMaxBurst,
				cfgno, inum, asnum, ep->desc.bEndpointAddress);
		ep->ss_ep_comp.bMaxBurst = 15;
	}

	if ((FUNC8(&ep->desc) ||
			FUNC9(&ep->desc)) &&
				desc->bmAttributes != 0) {
		FUNC3(ddev, "%s endpoint with bmAttributes = %d in "
				"config %d interface %d altsetting %d ep %d: "
				"setting to zero\n",
				FUNC8(&ep->desc) ? "Control" : "Bulk",
				desc->bmAttributes,
				cfgno, inum, asnum, ep->desc.bEndpointAddress);
		ep->ss_ep_comp.bmAttributes = 0;
	} else if (FUNC7(&ep->desc) &&
			desc->bmAttributes > 16) {
		FUNC3(ddev, "Bulk endpoint with more than 65536 streams in "
				"config %d interface %d altsetting %d ep %d: "
				"setting to max\n",
				cfgno, inum, asnum, ep->desc.bEndpointAddress);
		ep->ss_ep_comp.bmAttributes = 16;
	} else if (FUNC10(&ep->desc) &&
		   !FUNC1(desc->bmAttributes) &&
		   FUNC0(desc->bmAttributes) > 3) {
		FUNC3(ddev, "Isoc endpoint has Mult of %d in "
				"config %d interface %d altsetting %d ep %d: "
				"setting to 3\n",
				FUNC0(desc->bmAttributes),
				cfgno, inum, asnum, ep->desc.bEndpointAddress);
		ep->ss_ep_comp.bmAttributes = 2;
	}

	if (FUNC10(&ep->desc))
		max_tx = (desc->bMaxBurst + 1) *
			(FUNC0(desc->bmAttributes)) *
			FUNC6(&ep->desc);
	else if (FUNC9(&ep->desc))
		max_tx = FUNC6(&ep->desc) *
			(desc->bMaxBurst + 1);
	else
		max_tx = 999999;
	if (FUNC4(desc->wBytesPerInterval) > max_tx) {
		FUNC3(ddev, "%s endpoint with wBytesPerInterval of %d in "
				"config %d interface %d altsetting %d ep %d: "
				"setting to %d\n",
				FUNC10(&ep->desc) ? "Isoc" : "Int",
				FUNC4(desc->wBytesPerInterval),
				cfgno, inum, asnum, ep->desc.bEndpointAddress,
				max_tx);
		ep->ss_ep_comp.wBytesPerInterval = FUNC2(max_tx);
	}
	/* Parse a possible SuperSpeedPlus isoc ep companion descriptor */
	if (FUNC10(&ep->desc) &&
	    FUNC1(desc->bmAttributes))
		FUNC11(ddev, cfgno, inum, asnum,
							ep, buffer, size);
}