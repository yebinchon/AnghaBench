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
struct usb_serial_port {TYPE_1__* read_urb; TYPE_2__* write_urb; struct usb_serial* serial; } ;
struct usb_serial {int /*<<< orphan*/  dev; } ;
struct tty_struct {int dummy; } ;
struct spcp8x5_private {int /*<<< orphan*/  line_control; } ;
struct TYPE_4__ {int /*<<< orphan*/  pipe; } ;
struct TYPE_3__ {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_serial_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,struct usb_serial_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int,int) ; 
 struct spcp8x5_private* FUNC4 (struct usb_serial_port*) ; 
 int FUNC5 (struct tty_struct*,struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct tty_struct *tty, struct usb_serial_port *port)
{
	struct usb_serial *serial = port->serial;
	struct spcp8x5_private *priv = FUNC4(port);
	int ret;

	FUNC2(serial->dev, port->write_urb->pipe);
	FUNC2(serial->dev, port->read_urb->pipe);

	ret = FUNC3(serial->dev, FUNC6(serial->dev, 0),
			      0x09, 0x00,
			      0x01, 0x00, NULL, 0x00, 100);
	if (ret)
		return ret;

	FUNC0(port, priv->line_control);

	if (tty)
		FUNC1(tty, port, NULL);

	return FUNC5(tty, port);
}