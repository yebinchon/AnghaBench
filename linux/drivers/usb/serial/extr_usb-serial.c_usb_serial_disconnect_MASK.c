#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  delta_msr_wait; } ;
struct usb_serial_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  work; TYPE_2__ port; } ;
struct usb_serial {int disconnected; int num_ports; TYPE_1__* type; struct usb_serial_port** port; int /*<<< orphan*/  disc_mutex; } ;
struct device {int dummy; } ;
struct usb_interface {struct device dev; } ;
struct tty_struct {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* disconnect ) (struct usb_serial*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 
 struct tty_struct* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*) ; 
 struct usb_serial* FUNC10 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct usb_interface *interface)
{
	int i;
	struct usb_serial *serial = FUNC10(interface);
	struct device *dev = &interface->dev;
	struct usb_serial_port *port;
	struct tty_struct *tty;

	FUNC11(serial);

	FUNC4(&serial->disc_mutex);
	/* must set a flag, to signal subdrivers */
	serial->disconnected = 1;
	FUNC5(&serial->disc_mutex);

	for (i = 0; i < serial->num_ports; ++i) {
		port = serial->port[i];
		tty = FUNC8(&port->port);
		if (tty) {
			FUNC9(tty);
			FUNC7(tty);
		}
		FUNC12(port);
		FUNC14(&port->port.delta_msr_wait);
		FUNC0(&port->work);
		if (FUNC3(&port->dev))
			FUNC2(&port->dev);
	}
	if (serial->type->disconnect)
		serial->type->disconnect(serial);

	/* let the last holder of this object cause it to be cleaned up */
	FUNC13(serial);
	FUNC1(dev, "device disconnected\n");
}