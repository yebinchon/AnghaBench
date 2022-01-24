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
struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {int /*<<< orphan*/  disc_mutex; TYPE_2__* type; int /*<<< orphan*/  interface; } ;
struct tty_struct {int index; struct usb_serial_port* driver_data; } ;
struct tty_driver {int /*<<< orphan*/ ** termios; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;
struct TYPE_4__ {TYPE_1__ driver; int /*<<< orphan*/  (* init_termios ) (struct tty_struct*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tty_driver*,struct tty_struct*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct usb_serial_port* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_serial*) ; 

__attribute__((used)) static int FUNC9(struct tty_driver *driver, struct tty_struct *tty)
{
	int idx = tty->index;
	struct usb_serial *serial;
	struct usb_serial_port *port;
	bool init_termios;
	int retval = -ENODEV;

	port = FUNC7(idx);
	if (!port)
		return retval;

	serial = port->serial;
	if (!FUNC3(serial->type->driver.owner))
		goto error_module_get;

	retval = FUNC5(serial->interface);
	if (retval)
		goto error_get_interface;

	init_termios = (driver->termios[idx] == NULL);

	retval = FUNC4(driver, tty);
	if (retval)
		goto error_init_termios;

	FUNC1(&serial->disc_mutex);

	/* allow the driver to update the initial settings */
	if (init_termios && serial->type->init_termios)
		serial->type->init_termios(tty);

	tty->driver_data = port;

	return retval;

 error_init_termios:
	FUNC6(serial->interface);
 error_get_interface:
	FUNC0(serial->type->driver.owner);
 error_module_get:
	FUNC8(serial);
	FUNC1(&serial->disc_mutex);
	return retval;
}