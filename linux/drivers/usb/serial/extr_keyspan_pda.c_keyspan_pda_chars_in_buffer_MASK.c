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
struct usb_serial_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  write_urbs_free; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct keyspan_pda_private {scalar_t__ tx_throttled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct keyspan_pda_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty)
{
	struct usb_serial_port *port = tty->driver_data;
	struct keyspan_pda_private *priv;
	unsigned long flags;
	int ret = 0;

	priv = FUNC3(port);

	/* when throttled, return at least WAKEUP_CHARS to tell select() (via
	   n_tty.c:normal_poll() ) that we're not writeable. */

	FUNC0(&port->lock, flags);
	if (!FUNC2(0, &port->write_urbs_free) || priv->tx_throttled)
		ret = 256;
	FUNC1(&port->lock, flags);
	return ret;
}