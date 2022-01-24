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
struct TYPE_5__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_host_endpoint {struct cvmx_usb_pipe* hcpriv; TYPE_2__ desc; } ;
struct TYPE_4__ {struct device* controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct usb_device {int speed; int devnum; int portnum; struct usb_device* parent; } ;
struct urb {int number_of_packets; char* setup_packet; struct cvmx_usb_transaction* hcpriv; int /*<<< orphan*/  pipe; TYPE_3__* iso_frame_desc; int /*<<< orphan*/  interval; struct usb_device* dev; scalar_t__ status; struct usb_host_endpoint* ep; } ;
struct octeon_hcd {int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;
struct cvmx_usb_transaction {int dummy; } ;
struct cvmx_usb_pipe {int dummy; } ;
struct cvmx_usb_iso_packet {int /*<<< orphan*/  status; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum cvmx_usb_transfer { ____Placeholder_cvmx_usb_transfer } cvmx_usb_transfer ;
typedef  enum cvmx_usb_speed { ____Placeholder_cvmx_usb_speed } cvmx_usb_speed ;
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_USB_DIRECTION_IN ; 
 int /*<<< orphan*/  CVMX_USB_DIRECTION_OUT ; 
 int CVMX_USB_SPEED_FULL ; 
 int CVMX_USB_SPEED_HIGH ; 
 int CVMX_USB_SPEED_LOW ; 
 int /*<<< orphan*/  CVMX_USB_STATUS_ERROR ; 
 int CVMX_USB_TRANSFER_BULK ; 
 int CVMX_USB_TRANSFER_CONTROL ; 
 int CVMX_USB_TRANSFER_INTERRUPT ; 
 int CVMX_USB_TRANSFER_ISOCHRONOUS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  PIPE_BULK 133 
#define  PIPE_CONTROL 132 
#define  PIPE_INTERRUPT 131 
#define  PIPE_ISOCHRONOUS 130 
#define  USB_SPEED_FULL 129 
 scalar_t__ USB_SPEED_HIGH ; 
#define  USB_SPEED_LOW 128 
 struct cvmx_usb_pipe* FUNC0 (struct octeon_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 struct cvmx_usb_transaction* FUNC1 (struct octeon_hcd*,struct cvmx_usb_pipe*,struct urb*) ; 
 struct cvmx_usb_transaction* FUNC2 (struct octeon_hcd*,struct cvmx_usb_pipe*,struct urb*) ; 
 struct cvmx_usb_transaction* FUNC3 (struct octeon_hcd*,struct cvmx_usb_pipe*,struct urb*) ; 
 struct cvmx_usb_transaction* FUNC4 (struct octeon_hcd*,struct cvmx_usb_pipe*,struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 struct octeon_hcd* FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct cvmx_usb_iso_packet*) ; 
 struct cvmx_usb_iso_packet* FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC12 (struct usb_hcd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_hcd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct usb_hcd *hcd,
				  struct urb *urb,
				  gfp_t mem_flags)
{
	struct octeon_hcd *usb = FUNC6(hcd);
	struct device *dev = hcd->self.controller;
	struct cvmx_usb_transaction *transaction = NULL;
	struct cvmx_usb_pipe *pipe;
	unsigned long flags;
	struct cvmx_usb_iso_packet *iso_packet;
	struct usb_host_endpoint *ep = urb->ep;
	int rc;

	urb->status = 0;
	FUNC10(&usb->lock, flags);

	rc = FUNC12(hcd, urb);
	if (rc) {
		FUNC11(&usb->lock, flags);
		return rc;
	}

	if (!ep->hcpriv) {
		enum cvmx_usb_transfer transfer_type;
		enum cvmx_usb_speed speed;
		int split_device = 0;
		int split_port = 0;

		switch (FUNC17(urb->pipe)) {
		case PIPE_ISOCHRONOUS:
			transfer_type = CVMX_USB_TRANSFER_ISOCHRONOUS;
			break;
		case PIPE_INTERRUPT:
			transfer_type = CVMX_USB_TRANSFER_INTERRUPT;
			break;
		case PIPE_CONTROL:
			transfer_type = CVMX_USB_TRANSFER_CONTROL;
			break;
		default:
			transfer_type = CVMX_USB_TRANSFER_BULK;
			break;
		}
		switch (urb->dev->speed) {
		case USB_SPEED_LOW:
			speed = CVMX_USB_SPEED_LOW;
			break;
		case USB_SPEED_FULL:
			speed = CVMX_USB_SPEED_FULL;
			break;
		default:
			speed = CVMX_USB_SPEED_HIGH;
			break;
		}
		/*
		 * For slow devices on high speed ports we need to find the hub
		 * that does the speed translation so we know where to send the
		 * split transactions.
		 */
		if (speed != CVMX_USB_SPEED_HIGH) {
			/*
			 * Start at this device and work our way up the usb
			 * tree.
			 */
			struct usb_device *dev = urb->dev;

			while (dev->parent) {
				/*
				 * If our parent is high speed then he'll
				 * receive the splits.
				 */
				if (dev->parent->speed == USB_SPEED_HIGH) {
					split_device = dev->parent->devnum;
					split_port = dev->portnum;
					break;
				}
				/*
				 * Move up the tree one level. If we make it all
				 * the way up the tree, then the port must not
				 * be in high speed mode and we don't need a
				 * split.
				 */
				dev = dev->parent;
			}
		}
		pipe = FUNC0(usb, FUNC14(urb->pipe),
					  FUNC15(urb->pipe), speed,
					  FUNC9(ep->desc.wMaxPacketSize)
					  & 0x7ff,
					  transfer_type,
					  FUNC16(urb->pipe) ?
						CVMX_USB_DIRECTION_IN :
						CVMX_USB_DIRECTION_OUT,
					  urb->interval,
					  (FUNC9(ep->desc.wMaxPacketSize)
					   >> 11) & 0x3,
					  split_device, split_port);
		if (!pipe) {
			FUNC13(hcd, urb);
			FUNC11(&usb->lock, flags);
			FUNC5(dev, "Failed to create pipe\n");
			return -ENOMEM;
		}
		ep->hcpriv = pipe;
	} else {
		pipe = ep->hcpriv;
	}

	switch (FUNC17(urb->pipe)) {
	case PIPE_ISOCHRONOUS:
		FUNC5(dev, "Submit isochronous to %d.%d\n",
			FUNC14(urb->pipe),
			FUNC15(urb->pipe));
		/*
		 * Allocate a structure to use for our private list of
		 * isochronous packets.
		 */
		iso_packet = FUNC8(urb->number_of_packets,
					   sizeof(struct cvmx_usb_iso_packet),
					   GFP_ATOMIC);
		if (iso_packet) {
			int i;
			/* Fill the list with the data from the URB */
			for (i = 0; i < urb->number_of_packets; i++) {
				iso_packet[i].offset =
					urb->iso_frame_desc[i].offset;
				iso_packet[i].length =
					urb->iso_frame_desc[i].length;
				iso_packet[i].status = CVMX_USB_STATUS_ERROR;
			}
			/*
			 * Store a pointer to the list in the URB setup_packet
			 * field. We know this currently isn't being used and
			 * this saves us a bunch of logic.
			 */
			urb->setup_packet = (char *)iso_packet;
			transaction = FUNC4(usb,
								  pipe, urb);
			/*
			 * If submit failed we need to free our private packet
			 * list.
			 */
			if (!transaction) {
				urb->setup_packet = NULL;
				FUNC7(iso_packet);
			}
		}
		break;
	case PIPE_INTERRUPT:
		FUNC5(dev, "Submit interrupt to %d.%d\n",
			FUNC14(urb->pipe),
			FUNC15(urb->pipe));
		transaction = FUNC3(usb, pipe, urb);
		break;
	case PIPE_CONTROL:
		FUNC5(dev, "Submit control to %d.%d\n",
			FUNC14(urb->pipe),
			FUNC15(urb->pipe));
		transaction = FUNC2(usb, pipe, urb);
		break;
	case PIPE_BULK:
		FUNC5(dev, "Submit bulk to %d.%d\n",
			FUNC14(urb->pipe),
			FUNC15(urb->pipe));
		transaction = FUNC1(usb, pipe, urb);
		break;
	}
	if (!transaction) {
		FUNC13(hcd, urb);
		FUNC11(&usb->lock, flags);
		FUNC5(dev, "Failed to submit\n");
		return -ENOMEM;
	}
	urb->hcpriv = transaction;
	FUNC11(&usb->lock, flags);
	return 0;
}