#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  usb_complete_t ;
typedef  int /*<<< orphan*/  u8 ;
struct usb_device {scalar_t__ speed; } ;
struct urb {int interval; unsigned int transfer_flags; unsigned int transfer_buffer; int pipe; int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GUARD_BYTE ; 
 int INTERRUPT_RATE ; 
 int URB_NO_TRANSFER_DMA_MAP ; 
 unsigned int URB_SHORT_NOT_OK ; 
 scalar_t__ USB_SPEED_HIGH ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned int FUNC2 (struct usb_device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,struct usb_device*,int,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,struct usb_device*,int,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct urb *FUNC8(
	struct usb_device	*udev,
	int			pipe,
	unsigned long		bytes,
	unsigned		transfer_flags,
	unsigned		offset,
	u8			bInterval,
	usb_complete_t		complete_fn)
{
	struct urb		*urb;

	urb = FUNC3(0, GFP_KERNEL);
	if (!urb)
		return urb;

	if (bInterval)
		FUNC5(urb, udev, pipe, NULL, bytes, complete_fn,
				NULL, bInterval);
	else
		FUNC4(urb, udev, pipe, NULL, bytes, complete_fn,
				NULL);

	urb->interval = (udev->speed == USB_SPEED_HIGH)
			? (INTERRUPT_RATE << 3)
			: INTERRUPT_RATE;
	urb->transfer_flags = transfer_flags;
	if (FUNC7(pipe))
		urb->transfer_flags |= URB_SHORT_NOT_OK;

	if ((bytes + offset) == 0)
		return urb;

	if (urb->transfer_flags & URB_NO_TRANSFER_DMA_MAP)
		urb->transfer_buffer = FUNC2(udev, bytes + offset,
			GFP_KERNEL, &urb->transfer_dma);
	else
		urb->transfer_buffer = FUNC0(bytes + offset, GFP_KERNEL);

	if (!urb->transfer_buffer) {
		FUNC6(urb);
		return NULL;
	}

	/* To test unaligned transfers add an offset and fill the
		unused memory with a guard value */
	if (offset) {
		FUNC1(urb->transfer_buffer, GUARD_BYTE, offset);
		urb->transfer_buffer += offset;
		if (urb->transfer_flags & URB_NO_TRANSFER_DMA_MAP)
			urb->transfer_dma += offset;
	}

	/* For inbound transfers use guard byte so that test fails if
		data not correctly copied */
	FUNC1(urb->transfer_buffer,
			FUNC7(urb->pipe) ? GUARD_BYTE : 0,
			bytes);
	return urb;
}