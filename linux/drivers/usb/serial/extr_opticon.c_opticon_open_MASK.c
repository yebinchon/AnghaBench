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
struct usb_serial_port {TYPE_2__* read_urb; TYPE_1__* serial; } ;
struct tty_struct {int dummy; } ;
struct opticon_private {int rts; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  pipe; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_RTS ; 
 int /*<<< orphan*/  RESEND_CTS_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct usb_serial_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct opticon_private* FUNC4 (struct usb_serial_port*) ; 
 int FUNC5 (struct tty_struct*,struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC6(struct tty_struct *tty, struct usb_serial_port *port)
{
	struct opticon_private *priv = FUNC4(port);
	unsigned long flags;
	int res;

	FUNC1(&priv->lock, flags);
	priv->rts = false;
	FUNC2(&priv->lock, flags);

	/* Clear RTS line */
	FUNC0(port, CONTROL_RTS, 0);

	/* clear the halt status of the endpoint */
	FUNC3(port->serial->dev, port->read_urb->pipe);

	res = FUNC5(tty, port);
	if (res)
		return res;

	/* Request CTS line state, sometimes during opening the current
	 * CTS state can be missed. */
	FUNC0(port, RESEND_CTS_STATE, 1);

	return res;
}