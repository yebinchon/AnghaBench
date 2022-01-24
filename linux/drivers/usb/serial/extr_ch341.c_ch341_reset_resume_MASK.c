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
struct usb_serial_port {int /*<<< orphan*/  dev; TYPE_1__* serial; int /*<<< orphan*/  interrupt_in_urb; int /*<<< orphan*/  port; } ;
struct usb_serial {int /*<<< orphan*/  dev; struct usb_serial_port** port; } ;
struct ch341_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ch341_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ch341_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct ch341_private* FUNC4 (struct usb_serial_port*) ; 
 int FUNC5 (struct usb_serial*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_serial *serial)
{
	struct usb_serial_port *port = serial->port[0];
	struct ch341_private *priv = FUNC4(port);
	int ret;

	/* reconfigure ch341 serial port after bus-reset */
	FUNC0(serial->dev, priv);

	if (FUNC3(&port->port)) {
		ret = FUNC6(port->interrupt_in_urb, GFP_NOIO);
		if (ret) {
			FUNC2(&port->dev, "failed to submit interrupt urb: %d\n",
				ret);
			return ret;
		}

		ret = FUNC1(port->serial->dev, priv);
		if (ret < 0) {
			FUNC2(&port->dev, "failed to read modem status: %d\n",
				ret);
		}
	}

	return FUNC5(serial);
}