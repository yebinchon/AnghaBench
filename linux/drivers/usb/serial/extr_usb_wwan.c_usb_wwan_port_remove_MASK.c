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
struct usb_wwan_port_private {struct usb_wwan_port_private** out_buffer; int /*<<< orphan*/ * out_urbs; scalar_t__* in_buffer; int /*<<< orphan*/ * in_urbs; } ;
struct usb_serial_port {int dummy; } ;

/* Variables and functions */
 int N_IN_URB ; 
 int N_OUT_URB ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_wwan_port_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct usb_wwan_port_private* FUNC3 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial_port*,int /*<<< orphan*/ *) ; 

int FUNC5(struct usb_serial_port *port)
{
	int i;
	struct usb_wwan_port_private *portdata;

	portdata = FUNC3(port);
	FUNC4(port, NULL);

	for (i = 0; i < N_IN_URB; i++) {
		FUNC2(portdata->in_urbs[i]);
		FUNC0((unsigned long)portdata->in_buffer[i]);
	}
	for (i = 0; i < N_OUT_URB; i++) {
		FUNC2(portdata->out_urbs[i]);
		FUNC1(portdata->out_buffer[i]);
	}

	FUNC1(portdata);

	return 0;
}