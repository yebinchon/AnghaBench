#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct usbcons_info {struct usb_serial_port* port; } ;
struct TYPE_10__ {int console; scalar_t__ count; } ;
struct usb_serial_port {TYPE_4__ port; int /*<<< orphan*/  dev; struct usb_serial* serial; } ;
struct usb_serial {int /*<<< orphan*/  disc_mutex; int /*<<< orphan*/  interface; TYPE_1__* type; } ;
struct TYPE_9__ {int c_cflag; } ;
struct tty_struct {TYPE_3__ termios; int /*<<< orphan*/ * ops; TYPE_2__* driver; int /*<<< orphan*/  tty_files; int /*<<< orphan*/  files_lock; int /*<<< orphan*/  ldisc_sem; int /*<<< orphan*/  index; int /*<<< orphan*/  kref; } ;
struct ktermios {int dummy; } ;
struct console {int /*<<< orphan*/  index; } ;
struct TYPE_8__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  kref; } ;
struct TYPE_7__ {int (* open ) (int /*<<< orphan*/ *,struct usb_serial_port*) ;int /*<<< orphan*/  (* set_termios ) (struct tty_struct*,struct usb_serial_port*,struct ktermios*) ;} ;

/* Variables and functions */
 int CLOCAL ; 
 int CREAD ; 
 int CS7 ; 
 int CS8 ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HUPCL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PARENB ; 
 int PARODD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct tty_struct* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ktermios*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC13 (struct tty_struct*,struct usb_serial_port*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC14 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC15 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC19 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int,int) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_console_fake_tty_ops ; 
 struct usb_serial_port* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct usb_serial*) ; 
 TYPE_2__* usb_serial_tty_driver ; 
 struct usbcons_info usbcons_info ; 

__attribute__((used)) static int FUNC25(struct console *co, char *options)
{
	struct usbcons_info *info = &usbcons_info;
	int baud = 9600;
	int bits = 8;
	int parity = 'n';
	int doflow = 0;
	int cflag = CREAD | HUPCL | CLOCAL;
	char *s;
	struct usb_serial *serial;
	struct usb_serial_port *port;
	int retval;
	struct tty_struct *tty = NULL;
	struct ktermios dummy;

	if (options) {
		baud = FUNC10(options, NULL, 10);
		s = options;
		while (*s >= '0' && *s <= '9')
			s++;
		if (*s)
			parity = *s++;
		if (*s)
			bits   = *s++ - '0';
		if (*s)
			doflow = (*s++ == 'r');
	}
	
	/* Sane default */
	if (baud == 0)
		baud = 9600;

	switch (bits) {
	case 7:
		cflag |= CS7;
		break;
	default:
	case 8:
		cflag |= CS8;
		break;
	}
	switch (parity) {
	case 'o': case 'O':
		cflag |= PARODD;
		break;
	case 'e': case 'E':
		cflag |= PARENB;
		break;
	}

	/*
	 * no need to check the index here: if the index is wrong, console
	 * code won't call us
	 */
	port = FUNC23(co->index);
	if (port == NULL) {
		/* no device is connected yet, sorry :( */
		FUNC9("No USB device connected to ttyUSB%i\n", co->index);
		return -ENODEV;
	}
	serial = port->serial;

	retval = FUNC21(serial->interface);
	if (retval)
		goto error_get_interface;

	FUNC18(&port->port, NULL);

	info->port = port;

	++port->port.count;
	if (!FUNC16(&port->port)) {
		if (serial->type->set_termios) {
			/*
			 * allocate a fake tty so the driver can initialize
			 * the termios structure, then later call set_termios to
			 * configure according to command line arguments
			 */
			tty = FUNC6(sizeof(*tty), GFP_KERNEL);
			if (!tty) {
				retval = -ENOMEM;
				goto reset_open_count;
			}
			FUNC5(&tty->kref);
			tty->driver = usb_serial_tty_driver;
			tty->index = co->index;
			FUNC3(&tty->ldisc_sem);
			FUNC11(&tty->files_lock);
			FUNC0(&tty->tty_files);
			FUNC4(&tty->driver->kref);
			FUNC1(tty->driver->owner);
			tty->ops = &usb_console_fake_tty_ops;
			FUNC14(tty);
			FUNC18(&port->port, tty);
		}

		/* only call the device specific open if this
		 * is the first time the port is opened */
		retval = serial->type->open(NULL, port);
		if (retval) {
			FUNC2(&port->dev, "could not open USB console port\n");
			goto fail;
		}

		if (serial->type->set_termios) {
			tty->termios.c_cflag = cflag;
			FUNC20(&tty->termios, baud, baud);
			FUNC7(&dummy, 0, sizeof(struct ktermios));
			serial->type->set_termios(tty, port, &dummy);

			FUNC18(&port->port, NULL);
			FUNC19(tty);
			FUNC15(tty);
		}
		FUNC17(&port->port, 1);
	}
	/* Now that any required fake tty operations are completed restore
	 * the tty port count */
	--port->port.count;
	/* The console is special in terms of closing the device so
	 * indicate this port is now acting as a system console. */
	port->port.console = 1;

	FUNC8(&serial->disc_mutex);
	return retval;

 fail:
	FUNC18(&port->port, NULL);
	FUNC15(tty);
 reset_open_count:
	port->port.count = 0;
	info->port = NULL;
	FUNC22(serial->interface);
 error_get_interface:
	FUNC24(serial);
	FUNC8(&serial->disc_mutex);
	return retval;
}