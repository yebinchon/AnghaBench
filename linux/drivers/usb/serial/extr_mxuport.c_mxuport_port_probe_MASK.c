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
struct usb_serial_port {int /*<<< orphan*/  port_number; int /*<<< orphan*/  dev; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct mxuport_port {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MX_INT_RS232 ; 
 int /*<<< orphan*/  RQ_VENDOR_SET_FIFO_DISABLE ; 
 int /*<<< orphan*/  RQ_VENDOR_SET_HIGH_PERFOR ; 
 int /*<<< orphan*/  RQ_VENDOR_SET_INTERFACE ; 
 struct mxuport_port* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct usb_serial*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial_port*,struct mxuport_port*) ; 

__attribute__((used)) static int FUNC5(struct usb_serial_port *port)
{
	struct usb_serial *serial = port->serial;
	struct mxuport_port *mxport;
	int err;

	mxport = FUNC0(&port->dev, sizeof(struct mxuport_port),
			      GFP_KERNEL);
	if (!mxport)
		return -ENOMEM;

	FUNC1(&mxport->mutex);
	FUNC3(&mxport->spinlock);

	/* Set the port private data */
	FUNC4(port, mxport);

	/* Set FIFO (Enable) */
	err = FUNC2(serial, RQ_VENDOR_SET_FIFO_DISABLE,
				    0, port->port_number);
	if (err)
		return err;

	/* Set transmission mode (Hi-Performance) */
	err = FUNC2(serial, RQ_VENDOR_SET_HIGH_PERFOR,
				    0, port->port_number);
	if (err)
		return err;

	/* Set interface (RS-232) */
	return FUNC2(serial, RQ_VENDOR_SET_INTERFACE,
				     MX_INT_RS232,
				     port->port_number);
}