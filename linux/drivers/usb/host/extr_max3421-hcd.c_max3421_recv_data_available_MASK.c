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
typedef  size_t u8 ;
struct usb_hcd {int dummy; } ;
struct urb {scalar_t__ actual_length; scalar_t__ transfer_buffer_length; void* transfer_buffer; } ;
struct max3421_hcd {size_t curr_len; struct urb* curr_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t MAX3421_FIFO_SIZE ; 
 int /*<<< orphan*/  MAX3421_HI_RCVDAV_BIT ; 
 int /*<<< orphan*/  MAX3421_REG_HIRQ ; 
 int /*<<< orphan*/  MAX3421_REG_RCVBC ; 
 int /*<<< orphan*/  MAX3421_REG_RCVFIFO ; 
 struct max3421_hcd* FUNC1 (struct usb_hcd*) ; 
 size_t FUNC2 (struct usb_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hcd*,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct usb_hcd *hcd)
{
	struct max3421_hcd *max3421_hcd = FUNC1(hcd);
	struct urb *urb = max3421_hcd->curr_urb;
	size_t remaining, transfer_size;
	u8 rcvbc;

	rcvbc = FUNC2(hcd, MAX3421_REG_RCVBC);

	if (rcvbc > MAX3421_FIFO_SIZE)
		rcvbc = MAX3421_FIFO_SIZE;
	if (urb->actual_length >= urb->transfer_buffer_length)
		remaining = 0;
	else
		remaining = urb->transfer_buffer_length - urb->actual_length;
	transfer_size = rcvbc;
	if (transfer_size > remaining)
		transfer_size = remaining;
	if (transfer_size > 0) {
		void *dst = urb->transfer_buffer + urb->actual_length;

		FUNC3(hcd, MAX3421_REG_RCVFIFO, dst, transfer_size);
		urb->actual_length += transfer_size;
		max3421_hcd->curr_len = transfer_size;
	}

	/* ack the RCVDAV irq now that the FIFO has been read: */
	FUNC4(hcd, MAX3421_REG_HIRQ, FUNC0(MAX3421_HI_RCVDAV_BIT));
}