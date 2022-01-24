#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_serial_port {TYPE_3__* serial; TYPE_2__* write_urb; TYPE_1__* read_urb; } ;
struct tty_struct {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  pipe; } ;
struct TYPE_5__ {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int WHITEHEAT_PURGE_RX ; 
 int WHITEHEAT_PURGE_TX ; 
 int /*<<< orphan*/  FUNC0 (struct usb_serial_port*) ; 
 int FUNC1 (struct usb_serial_port*) ; 
 int FUNC2 (struct usb_serial_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct tty_struct*,struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC8(struct tty_struct *tty, struct usb_serial_port *port)
{
	int retval;

	retval = FUNC4(port->serial);
	if (retval)
		goto exit;

	/* send an open port command */
	retval = FUNC1(port);
	if (retval) {
		FUNC5(port->serial);
		goto exit;
	}

	retval = FUNC2(port, WHITEHEAT_PURGE_RX | WHITEHEAT_PURGE_TX);
	if (retval) {
		FUNC0(port);
		FUNC5(port->serial);
		goto exit;
	}

	if (tty)
		FUNC3(tty);

	/* Work around HCD bugs */
	FUNC6(port->serial->dev, port->read_urb->pipe);
	FUNC6(port->serial->dev, port->write_urb->pipe);

	retval = FUNC7(tty, port);
	if (retval) {
		FUNC0(port);
		FUNC5(port->serial);
		goto exit;
	}
exit:
	return retval;
}