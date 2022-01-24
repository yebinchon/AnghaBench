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
struct usb_serial_port {scalar_t__ bulk_out_size; scalar_t__ bulk_in_size; int /*<<< orphan*/  port; } ;
struct usb_serial {int num_ports; struct usb_serial_port** port; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct usb_serial_port*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_serial_port*,int /*<<< orphan*/ ) ; 

int FUNC3(struct usb_serial *serial)
{
	struct usb_serial_port *port;
	int i, c = 0, r;

	for (i = 0; i < serial->num_ports; i++) {
		port = serial->port[i];
		if (!FUNC0(&port->port))
			continue;

		if (port->bulk_in_size) {
			r = FUNC1(port,
								GFP_NOIO);
			if (r < 0)
				c++;
		}

		if (port->bulk_out_size) {
			r = FUNC2(port, GFP_NOIO);
			if (r < 0)
				c++;
		}
	}

	return c ? -EIO : 0;
}