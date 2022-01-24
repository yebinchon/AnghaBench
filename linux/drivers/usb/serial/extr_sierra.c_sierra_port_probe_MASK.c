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
typedef  int /*<<< orphan*/  u8 ;
struct usb_serial_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  port_number; struct usb_serial* serial; } ;
struct usb_serial {int num_ports; } ;
struct sierra_port_private {int /*<<< orphan*/  num_out_urbs; int /*<<< orphan*/  num_in_urbs; int /*<<< orphan*/  delayed; int /*<<< orphan*/  active; int /*<<< orphan*/  lock; } ;
struct sierra_iface_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  N_IN_URB ; 
 int /*<<< orphan*/  N_IN_URB_HM ; 
 int /*<<< orphan*/  N_OUT_URB ; 
 int /*<<< orphan*/  N_OUT_URB_HM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct sierra_iface_info const*) ; 
 struct sierra_port_private* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sierra_iface_info typeA_interface_list ; 
 struct sierra_iface_info typeB_interface_list ; 
 int /*<<< orphan*/  FUNC6 (struct usb_serial_port*,struct sierra_port_private*) ; 

__attribute__((used)) static int FUNC7(struct usb_serial_port *port)
{
	struct usb_serial *serial = port->serial;
	struct sierra_port_private *portdata;
	const struct sierra_iface_info *himemoryp;
	u8 ifnum;

	portdata = FUNC3(sizeof(*portdata), GFP_KERNEL);
	if (!portdata)
		return -ENOMEM;

	FUNC5(&portdata->lock);
	FUNC1(&portdata->active);
	FUNC1(&portdata->delayed);

	/* Assume low memory requirements */
	portdata->num_out_urbs = N_OUT_URB;
	portdata->num_in_urbs  = N_IN_URB;

	/* Determine actual memory requirements */
	if (serial->num_ports == 1) {
		/* Get interface number for composite device */
		ifnum = FUNC4(serial);
		himemoryp = &typeB_interface_list;
	} else {
		/* This is really the usb-serial port number of the interface
		 * rather than the interface number.
		 */
		ifnum = port->port_number;
		himemoryp = &typeA_interface_list;
	}

	if (FUNC2(ifnum, himemoryp)) {
		portdata->num_out_urbs = N_OUT_URB_HM;
		portdata->num_in_urbs  = N_IN_URB_HM;
	}

	FUNC0(&port->dev,
			"Memory usage (urbs) interface #%d, in=%d, out=%d\n",
			ifnum, portdata->num_in_urbs, portdata->num_out_urbs);

	FUNC6(port, portdata);

	return 0;
}