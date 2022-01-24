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
struct usb_serial_port {int /*<<< orphan*/  interrupt_in_urb; int /*<<< orphan*/  dev; TYPE_2__* read_urb; TYPE_1__* write_urb; struct usb_serial* serial; } ;
struct usb_serial {int /*<<< orphan*/  dev; } ;
struct tty_struct {int dummy; } ;
struct pl2303_serial_private {int quirks; } ;
struct TYPE_4__ {int /*<<< orphan*/  pipe; } ;
struct TYPE_3__ {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PL2303_QUIRK_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,struct usb_serial_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_serial*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pl2303_serial_private* FUNC4 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct tty_struct*,struct usb_serial_port*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct tty_struct *tty, struct usb_serial_port *port)
{
	struct usb_serial *serial = port->serial;
	struct pl2303_serial_private *spriv = FUNC4(serial);
	int result;

	if (spriv->quirks & PL2303_QUIRK_LEGACY) {
		FUNC3(serial->dev, port->write_urb->pipe);
		FUNC3(serial->dev, port->read_urb->pipe);
	} else {
		/* reset upstream data pipes */
		FUNC2(serial, 8, 0);
		FUNC2(serial, 9, 0);
	}

	/* Setup termios */
	if (tty)
		FUNC1(tty, port, NULL);

	result = FUNC7(port->interrupt_in_urb, GFP_KERNEL);
	if (result) {
		FUNC0(&port->dev, "failed to submit interrupt urb: %d\n",
			result);
		return result;
	}

	result = FUNC6(tty, port);
	if (result) {
		FUNC5(port->interrupt_in_urb);
		return result;
	}

	return 0;
}