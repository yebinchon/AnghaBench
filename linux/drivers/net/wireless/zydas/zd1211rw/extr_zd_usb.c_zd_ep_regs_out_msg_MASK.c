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
struct usb_host_endpoint {int /*<<< orphan*/  desc; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EP_REGS_OUT ; 
 int FUNC0 (struct usb_device*,unsigned int,void*,int,int*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct usb_device*,unsigned int,void*,int,int*,int) ; 
 struct usb_host_endpoint* FUNC3 (struct usb_device*,unsigned int) ; 
 unsigned int FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_device *udev, void *data, int len,
			      int *actual_length, int timeout)
{
	/* In USB 2.0 mode EP_REGS_OUT endpoint is interrupt type. However in
	 * USB 1.1 mode endpoint is bulk. Select correct type URB by endpoint
	 * descriptor.
	 */
	struct usb_host_endpoint *ep;
	unsigned int pipe;

	pipe = FUNC5(udev, EP_REGS_OUT);
	ep = FUNC3(udev, pipe);
	if (!ep)
		return -EINVAL;

	if (FUNC1(&ep->desc)) {
		return FUNC2(udev, pipe, data, len,
					 actual_length, timeout);
	} else {
		pipe = FUNC4(udev, EP_REGS_OUT);
		return FUNC0(udev, pipe, data, len, actual_length,
				    timeout);
	}
}