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
struct usb_serial_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  interrupt_in_urb; int /*<<< orphan*/  port; } ;
struct usb_serial {struct usb_serial_port** port; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct usb_serial*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_serial *serial)
{
	struct usb_serial_port *port = serial->port[0];
	int result;

	if (FUNC1(&port->port)) {
		result = FUNC3(port->interrupt_in_urb, GFP_NOIO);
		if (result) {
			FUNC0(&port->dev, "submit interrupt urb failed: %d\n",
					result);
			return result;
		}
	}

	return FUNC2(serial);
}