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
struct usbtest_dev {int /*<<< orphan*/  out_pipe; } ;
struct usb_device {int dummy; } ;
struct urb {int /*<<< orphan*/  pipe; int /*<<< orphan*/  transfer_flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  URB_ZERO_PACKET ; 
 unsigned int FUNC0 (struct usb_device*,int /*<<< orphan*/ ) ; 
 struct urb* FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 
 int FUNC3 (struct usbtest_dev*,int,struct urb*) ; 
 struct usb_device* FUNC4 (struct usbtest_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usbtest_dev *dev)
{
	int			ep;
	int			retval = 0;
	struct urb		*urb;
	struct usb_device	*udev = FUNC4(dev);
	unsigned		maxp = FUNC0(udev, dev->out_pipe);

	/*
	 * Create a URB that causes a transfer of uneven amount of data packets
	 * This way the clear toggle has an impact on the data toggle sequence.
	 * Use 2 maxpacket length packets and one zero packet.
	 */
	urb = FUNC1(udev, 0,  2 * maxp, 0);
	if (urb == NULL)
		return -ENOMEM;

	urb->transfer_flags |= URB_ZERO_PACKET;

	ep = FUNC5(dev->out_pipe);
	urb->pipe = dev->out_pipe;
	retval = FUNC3(dev, ep, urb);

	FUNC2(urb);
	return retval;
}