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
struct usb_serial_port {int /*<<< orphan*/  interrupt_in_urb; int /*<<< orphan*/ * read_urbs; } ;
struct usb_serial {struct usb_serial_port** port; } ;
struct f81232_private {int /*<<< orphan*/  lsr_work; int /*<<< orphan*/  interrupt_work; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct f81232_private* FUNC2 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_serial *serial, pm_message_t message)
{
	struct usb_serial_port *port = serial->port[0];
	struct f81232_private *port_priv = FUNC2(port);
	int i;

	for (i = 0; i < FUNC0(port->read_urbs); ++i)
		FUNC3(port->read_urbs[i]);

	FUNC3(port->interrupt_in_urb);

	if (port_priv) {
		FUNC1(&port_priv->interrupt_work);
		FUNC1(&port_priv->lsr_work);
	}

	return 0;
}