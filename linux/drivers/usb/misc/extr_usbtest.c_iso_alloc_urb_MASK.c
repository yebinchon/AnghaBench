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
struct usb_endpoint_descriptor {int bInterval; } ;
struct usb_device {scalar_t__ speed; } ;
struct urb {int pipe; unsigned int number_of_packets; long transfer_buffer_length; unsigned int transfer_buffer; int interval; int transfer_flags; int /*<<< orphan*/  complete; TYPE_1__* iso_frame_desc; int /*<<< orphan*/  transfer_dma; struct usb_device* dev; } ;
struct TYPE_2__ {unsigned int offset; scalar_t__ length; } ;

/* Variables and functions */
 unsigned int FUNC0 (long,unsigned int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GUARD_BYTE ; 
 int URB_ISO_ASAP ; 
 int URB_NO_TRANSFER_DMA_MAP ; 
 scalar_t__ USB_SPEED_SUPER ; 
 int /*<<< orphan*/  complicated_callback ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC2 (unsigned int,unsigned int) ; 
 unsigned int FUNC3 (struct usb_device*,int) ; 
 unsigned int FUNC4 (struct usb_device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct usb_endpoint_descriptor*) ; 
 unsigned int FUNC7 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static struct urb *FUNC10(
	struct usb_device	*udev,
	int			pipe,
	struct usb_endpoint_descriptor	*desc,
	long			bytes,
	unsigned offset
)
{
	struct urb		*urb;
	unsigned		i, maxp, packets;

	if (bytes < 0 || !desc)
		return NULL;

	maxp = FUNC6(desc);
	if (udev->speed >= USB_SPEED_SUPER)
		maxp *= FUNC3(udev, pipe);
	else
		maxp *= FUNC7(desc);

	packets = FUNC0(bytes, maxp);

	urb = FUNC5(packets, GFP_KERNEL);
	if (!urb)
		return urb;
	urb->dev = udev;
	urb->pipe = pipe;

	urb->number_of_packets = packets;
	urb->transfer_buffer_length = bytes;
	urb->transfer_buffer = FUNC4(udev, bytes + offset,
							GFP_KERNEL,
							&urb->transfer_dma);
	if (!urb->transfer_buffer) {
		FUNC8(urb);
		return NULL;
	}
	if (offset) {
		FUNC1(urb->transfer_buffer, GUARD_BYTE, offset);
		urb->transfer_buffer += offset;
		urb->transfer_dma += offset;
	}
	/* For inbound transfers use guard byte so that test fails if
		data not correctly copied */
	FUNC1(urb->transfer_buffer,
			FUNC9(urb->pipe) ? GUARD_BYTE : 0,
			bytes);

	for (i = 0; i < packets; i++) {
		/* here, only the last packet will be short */
		urb->iso_frame_desc[i].length = FUNC2((unsigned) bytes, maxp);
		bytes -= urb->iso_frame_desc[i].length;

		urb->iso_frame_desc[i].offset = maxp * i;
	}

	urb->complete = complicated_callback;
	/* urb->context = SET BY CALLER */
	urb->interval = 1 << (desc->bInterval - 1);
	urb->transfer_flags = URB_ISO_ASAP | URB_NO_TRANSFER_DMA_MAP;
	return urb;
}