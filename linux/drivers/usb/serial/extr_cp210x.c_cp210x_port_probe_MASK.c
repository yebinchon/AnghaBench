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
struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct cp210x_port_private {int /*<<< orphan*/  bInterfaceNumber; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC2 (struct cp210x_port_private*) ; 
 struct cp210x_port_private* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial_port*,struct cp210x_port_private*) ; 

__attribute__((used)) static int FUNC5(struct usb_serial_port *port)
{
	struct usb_serial *serial = port->serial;
	struct cp210x_port_private *port_priv;
	int ret;

	port_priv = FUNC3(sizeof(*port_priv), GFP_KERNEL);
	if (!port_priv)
		return -ENOMEM;

	port_priv->bInterfaceNumber = FUNC1(serial);

	FUNC4(port, port_priv);

	ret = FUNC0(port);
	if (ret) {
		FUNC2(port_priv);
		return ret;
	}

	return 0;
}