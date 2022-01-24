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
typedef  int /*<<< orphan*/  u8 ;
struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_serial_port *port, u8 requesttype,
				u8 val)
{
	struct usb_serial *serial = port->serial;
	int retval;
	u8 *buffer;

	buffer = FUNC1(1, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	buffer[0] = val;
	/* Send the message to the vendor control endpoint
	 * of the connected device */
	retval = FUNC2(serial->dev, FUNC3(serial->dev, 0),
				requesttype,
				USB_DIR_OUT|USB_TYPE_VENDOR|USB_RECIP_INTERFACE,
				0, 0, buffer, 1, 0);
	FUNC0(buffer);

	if (retval < 0)
		return retval;

	return 0;
}