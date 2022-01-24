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
struct usb_wwan_port_private {int rts_state; int dtr_state; } ;
struct usb_wwan_intf_private {int /*<<< orphan*/  use_send_setup; } ;
struct usb_serial_port {int /*<<< orphan*/  serial; } ;

/* Variables and functions */
 struct usb_wwan_intf_private* FUNC0 (int /*<<< orphan*/ ) ; 
 struct usb_wwan_port_private* FUNC1 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_serial_port*) ; 

void FUNC3(struct usb_serial_port *port, int on)
{
	struct usb_wwan_port_private *portdata;
	struct usb_wwan_intf_private *intfdata;

	intfdata = FUNC0(port->serial);

	if (!intfdata->use_send_setup)
		return;

	portdata = FUNC1(port);
	/* FIXME: locking */
	portdata->rts_state = on;
	portdata->dtr_state = on;

	FUNC2(port);
}