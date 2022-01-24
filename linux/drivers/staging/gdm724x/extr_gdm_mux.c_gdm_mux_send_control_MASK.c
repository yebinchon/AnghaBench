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
struct usb_device {int dummy; } ;
struct mux_dev {struct usb_device* usbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_RT_ACM ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,void*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *priv_dev, int request, int value,
				void *buf, int len)
{
	struct mux_dev *mux_dev = priv_dev;
	struct usb_device *usbdev = mux_dev->usbdev;
	int ret;

	ret = FUNC2(usbdev,
			      FUNC3(usbdev, 0),
			      request,
			      USB_RT_ACM,
			      value,
			      2,
			      buf,
			      len,
			      5000
			     );

	if (ret < 0)
		FUNC1("usb_control_msg error: %d\n", ret);

	return FUNC0(ret, 0);
}