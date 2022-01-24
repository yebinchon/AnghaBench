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
struct usb_wwan_port_private {struct usb_wwan_port_private** in_buffer; struct urb** in_urbs; struct usb_wwan_port_private** out_buffer; struct urb** out_urbs; int /*<<< orphan*/  delayed; } ;
typedef  struct usb_wwan_port_private u8 ;
struct usb_serial_port {int /*<<< orphan*/  bulk_out_endpointAddress; int /*<<< orphan*/  bulk_in_endpointAddress; int /*<<< orphan*/  bulk_out_size; int /*<<< orphan*/  bulk_in_size; } ;
struct urb {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IN_BUFLEN ; 
 int N_IN_URB ; 
 int N_OUT_URB ; 
 int /*<<< orphan*/  OUT_BUFLEN ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  USB_DIR_OUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_wwan_port_private*) ; 
 struct usb_wwan_port_private* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_wwan_port_private* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_serial_port*,struct usb_wwan_port_private*) ; 
 int /*<<< orphan*/  usb_wwan_indat_callback ; 
 int /*<<< orphan*/  usb_wwan_outdat_callback ; 
 struct urb* FUNC8 (struct usb_serial_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_serial_port*,struct usb_wwan_port_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct usb_serial_port *port)
{
	struct usb_wwan_port_private *portdata;
	struct urb *urb;
	u8 *buffer;
	int i;

	if (!port->bulk_in_size || !port->bulk_out_size)
		return -ENODEV;

	portdata = FUNC5(sizeof(*portdata), GFP_KERNEL);
	if (!portdata)
		return -ENOMEM;

	FUNC2(&portdata->delayed);

	for (i = 0; i < N_IN_URB; i++) {
		buffer = (u8 *)FUNC0(GFP_KERNEL);
		if (!buffer)
			goto bail_out_error;
		portdata->in_buffer[i] = buffer;

		urb = FUNC8(port, port->bulk_in_endpointAddress,
						USB_DIR_IN, port,
						buffer, IN_BUFLEN,
						usb_wwan_indat_callback);
		portdata->in_urbs[i] = urb;
	}

	for (i = 0; i < N_OUT_URB; i++) {
		buffer = FUNC4(OUT_BUFLEN, GFP_KERNEL);
		if (!buffer)
			goto bail_out_error2;
		portdata->out_buffer[i] = buffer;

		urb = FUNC8(port, port->bulk_out_endpointAddress,
						USB_DIR_OUT, port,
						buffer, OUT_BUFLEN,
						usb_wwan_outdat_callback);
		portdata->out_urbs[i] = urb;
	}

	FUNC7(port, portdata);

	return 0;

bail_out_error2:
	for (i = 0; i < N_OUT_URB; i++) {
		FUNC6(portdata->out_urbs[i]);
		FUNC3(portdata->out_buffer[i]);
	}
bail_out_error:
	for (i = 0; i < N_IN_URB; i++) {
		FUNC6(portdata->in_urbs[i]);
		FUNC1((unsigned long)portdata->in_buffer[i]);
	}
	FUNC3(portdata);

	return -ENOMEM;
}