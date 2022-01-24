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
struct mct_u232_private {unsigned int control_state; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mct_u232_private* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty)
{
	struct usb_serial_port *port = tty->driver_data;
	struct mct_u232_private *priv = FUNC2(port);
	unsigned int control_state;
	unsigned long flags;

	FUNC0(&priv->lock, flags);
	control_state = priv->control_state;
	FUNC1(&priv->lock, flags);

	return control_state;
}