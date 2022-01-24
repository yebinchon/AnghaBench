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
struct usb_serial_port {int /*<<< orphan*/  interrupt_in_urb; } ;
struct sierra_port_private {int num_in_urbs; int /*<<< orphan*/ * in_urbs; } ;

/* Variables and functions */
 struct sierra_port_private* FUNC0 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct usb_serial_port *port)
{
	int i;
	struct sierra_port_private *portdata = FUNC0(port);

	for (i = 0; i < portdata->num_in_urbs; i++)
		FUNC1(portdata->in_urbs[i]);

	FUNC1(port->interrupt_in_urb);
}