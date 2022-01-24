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
typedef  scalar_t__ u16 ;
struct usb_serial {TYPE_2__** port; struct usb_device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  idProduct; } ;
struct usb_device {int /*<<< orphan*/  dev; TYPE_1__ descriptor; } ;
struct urb {int /*<<< orphan*/  complete; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_4__ {struct urb* interrupt_in_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MOS7720_LSR ; 
 scalar_t__ MOSCHIP_DEVICE_ID_7715 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mos7715_interrupt_callback ; 
 int FUNC3 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usb_serial *serial)
{
	struct usb_device *dev;
	char data;
	u16 product;
	int ret_val;

	product = FUNC2(serial->dev->descriptor.idProduct);
	dev = serial->dev;

	/* setting configuration feature to one */
	FUNC5(serial->dev, FUNC6(serial->dev, 0),
			(__u8)0x03, 0x00, 0x01, 0x00, NULL, 0x00, 5000);

	if (product == MOSCHIP_DEVICE_ID_7715) {
		struct urb *urb = serial->port[0]->interrupt_in_urb;

		urb->complete = mos7715_interrupt_callback;

#ifdef CONFIG_USB_SERIAL_MOS7715_PARPORT
		ret_val = mos7715_parport_init(serial);
		if (ret_val < 0)
			return ret_val;
#endif
	}
	/* start the interrupt urb */
	ret_val = FUNC7(serial->port[0]->interrupt_in_urb, GFP_KERNEL);
	if (ret_val) {
		FUNC1(&dev->dev, "failed to submit interrupt urb: %d\n",
			ret_val);
	}

	/* LSR For Port 1 */
	FUNC4(serial, 0, MOS7720_LSR, &data);
	FUNC0(&dev->dev, "LSR:%x\n", data);

	return 0;
}