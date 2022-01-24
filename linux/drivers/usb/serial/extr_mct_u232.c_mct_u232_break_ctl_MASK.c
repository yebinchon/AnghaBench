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
struct mct_u232_private {unsigned char last_lcr; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned char MCT_U232_SET_BREAK ; 
 int /*<<< orphan*/  FUNC0 (struct usb_serial_port*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mct_u232_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty, int break_state)
{
	struct usb_serial_port *port = tty->driver_data;
	struct mct_u232_private *priv = FUNC3(port);
	unsigned char lcr;
	unsigned long flags;

	FUNC1(&priv->lock, flags);
	lcr = priv->last_lcr;

	if (break_state)
		lcr |= MCT_U232_SET_BREAK;
	FUNC2(&priv->lock, flags);

	FUNC0(port, lcr);
}