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
struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct cypress_private {int cmd_ctrl; int /*<<< orphan*/  lock; int /*<<< orphan*/  line_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_DTR ; 
 int /*<<< orphan*/  CONTROL_RTS ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 int FUNC0 (struct tty_struct*,struct usb_serial_port*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cypress_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty,
			       unsigned int set, unsigned int clear)
{
	struct usb_serial_port *port = tty->driver_data;
	struct cypress_private *priv = FUNC3(port);
	unsigned long flags;

	FUNC1(&priv->lock, flags);
	if (set & TIOCM_RTS)
		priv->line_control |= CONTROL_RTS;
	if (set & TIOCM_DTR)
		priv->line_control |= CONTROL_DTR;
	if (clear & TIOCM_RTS)
		priv->line_control &= ~CONTROL_RTS;
	if (clear & TIOCM_DTR)
		priv->line_control &= ~CONTROL_DTR;
	priv->cmd_ctrl = 1;
	FUNC2(&priv->lock, flags);

	return FUNC0(tty, port, NULL, 0);
}