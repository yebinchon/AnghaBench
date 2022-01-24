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
struct urb {unsigned int transfer_flags; int actual_length; int status; } ;
struct sisusb_usb_data {int* urbstatus; int /*<<< orphan*/  wait_q; TYPE_1__* urbout_context; int /*<<< orphan*/  sisusb_dev; struct urb** sisurbout; } ;
struct TYPE_2__ {int* actual_length; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SU_URB_BUSY ; 
 int /*<<< orphan*/  sisusb_bulk_completeout ; 
 int /*<<< orphan*/  FUNC0 (struct urb*,int /*<<< orphan*/ ,unsigned int,void*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 
 int FUNC2 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct sisusb_usb_data *sisusb, int index,
		unsigned int pipe, void *data, int len, int *actual_length,
		int timeout, unsigned int tflags)
{
	struct urb *urb = sisusb->sisurbout[index];
	int retval, byteswritten = 0;

	/* Set up URB */
	urb->transfer_flags = 0;

	FUNC0(urb, sisusb->sisusb_dev, pipe, data, len,
			sisusb_bulk_completeout,
			&sisusb->urbout_context[index]);

	urb->transfer_flags |= tflags;
	urb->actual_length = 0;

	/* Set up context */
	sisusb->urbout_context[index].actual_length = (timeout) ?
			NULL : actual_length;

	/* Declare this urb/buffer in use */
	sisusb->urbstatus[index] |= SU_URB_BUSY;

	/* Submit URB */
	retval = FUNC2(urb, GFP_KERNEL);

	/* If OK, and if timeout > 0, wait for completion */
	if ((retval == 0) && timeout) {
		FUNC3(sisusb->wait_q,
				(!(sisusb->urbstatus[index] & SU_URB_BUSY)),
				timeout);
		if (sisusb->urbstatus[index] & SU_URB_BUSY) {
			/* URB timed out... kill it and report error */
			FUNC1(urb);
			retval = -ETIMEDOUT;
		} else {
			/* Otherwise, report urb status */
			retval = urb->status;
			byteswritten = urb->actual_length;
		}
	}

	if (actual_length)
		*actual_length = byteswritten;

	return retval;
}