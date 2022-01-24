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
typedef  int /*<<< orphan*/  u16 ;
struct usb_serial_port {int /*<<< orphan*/  dev; struct usb_serial* serial; } ;
struct usb_serial {int /*<<< orphan*/  dev; } ;
struct cp210x_port_private {int /*<<< orphan*/  bInterfaceNumber; } ;

/* Variables and functions */
 int /*<<< orphan*/  REQTYPE_HOST_TO_INTERFACE ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cp210x_port_private* FUNC2 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_serial_port *port, u8 req, u16 val)
{
	struct usb_serial *serial = port->serial;
	struct cp210x_port_private *port_priv = FUNC2(port);
	int result;

	result = FUNC1(serial->dev, FUNC3(serial->dev, 0),
			req, REQTYPE_HOST_TO_INTERFACE, val,
			port_priv->bInterfaceNumber, NULL, 0,
			USB_CTRL_SET_TIMEOUT);
	if (result < 0) {
		FUNC0(&port->dev, "failed set request 0x%x status: %d\n",
				req, result);
	}

	return result;
}