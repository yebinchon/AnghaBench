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
struct usb_serial_port {int bulk_in_endpointAddress; struct usb_serial* serial; } ;
struct usb_serial {TYPE_1__* interface; int /*<<< orphan*/  dev; } ;
struct urb {int dummy; } ;
struct tty_struct {int dummy; } ;
struct sierra_port_private {int num_in_urbs; struct urb** in_urbs; } ;
struct sierra_intf_private {int open_ports; int /*<<< orphan*/  susp_lock; } ;
struct TYPE_2__ {int needs_remote_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IN_BUFLEN ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  sierra_indat_callback ; 
 int /*<<< orphan*/  FUNC0 (struct urb*) ; 
 struct urb* FUNC1 (struct usb_serial*,int,int,struct usb_serial_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_serial_port*) ; 
 int FUNC3 (struct usb_serial_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 struct sierra_intf_private* FUNC8 (struct usb_serial*) ; 
 struct sierra_port_private* FUNC9 (struct usb_serial_port*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct tty_struct *tty, struct usb_serial_port *port)
{
	struct sierra_port_private *portdata;
	struct usb_serial *serial = port->serial;
	struct sierra_intf_private *intfdata = FUNC8(serial);
	int i;
	int err;
	int endpoint;
	struct urb *urb;

	portdata = FUNC9(port);

	endpoint = port->bulk_in_endpointAddress;
	for (i = 0; i < portdata->num_in_urbs; i++) {
		urb = FUNC1(serial, endpoint, USB_DIR_IN, port,
					IN_BUFLEN, GFP_KERNEL,
					sierra_indat_callback);
		portdata->in_urbs[i] = urb;
	}
	/* clear halt condition */
	FUNC7(serial->dev,
			FUNC10(serial->dev, endpoint) | USB_DIR_IN);

	err = FUNC3(port, GFP_KERNEL);
	if (err)
		goto err_submit;

	FUNC4(&intfdata->susp_lock);
	if (++intfdata->open_ports == 1)
		serial->interface->needs_remote_wakeup = 1;
	FUNC5(&intfdata->susp_lock);
	FUNC6(serial->interface);

	return 0;

err_submit:
	FUNC2(port);

	for (i = 0; i < portdata->num_in_urbs; i++) {
		FUNC0(portdata->in_urbs[i]);
		portdata->in_urbs[i] = NULL;
	}

	return err;
}