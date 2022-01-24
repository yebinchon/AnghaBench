#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  console; } ;
struct usb_serial_port {TYPE_1__ port; int /*<<< orphan*/  sysrq; } ;
struct urb {int actual_length; scalar_t__ transfer_buffer; struct usb_serial_port* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_serial_port*,char) ; 

void FUNC4(struct urb *urb)
{
	struct usb_serial_port *port = urb->context;
	char *ch = (char *)urb->transfer_buffer;
	int i;

	if (!urb->actual_length)
		return;
	/*
	 * The per character mucking around with sysrq path it too slow for
	 * stuff like 3G modems, so shortcircuit it in the 99.9999999% of
	 * cases where the USB serial is not a console anyway.
	 */
	if (!port->port.console || !port->sysrq) {
		FUNC2(&port->port, ch, urb->actual_length);
	} else {
		for (i = 0; i < urb->actual_length; i++, ch++) {
			if (!FUNC3(port, *ch))
				FUNC1(&port->port, *ch, TTY_NORMAL);
		}
	}
	FUNC0(&port->port);
}