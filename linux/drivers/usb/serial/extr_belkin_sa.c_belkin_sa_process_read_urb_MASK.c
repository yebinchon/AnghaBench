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
struct usb_serial_port {int /*<<< orphan*/  port; int /*<<< orphan*/  dev; } ;
struct urb {unsigned char* transfer_buffer; int /*<<< orphan*/  actual_length; struct usb_serial_port* context; } ;
struct belkin_sa_private {unsigned char last_lsr; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned char BELKIN_SA_LSR_BI ; 
 unsigned char BELKIN_SA_LSR_ERR ; 
 unsigned char BELKIN_SA_LSR_FE ; 
 unsigned char BELKIN_SA_LSR_OE ; 
 unsigned char BELKIN_SA_LSR_PE ; 
 char TTY_BREAK ; 
 char TTY_FRAME ; 
 char TTY_NORMAL ; 
 int /*<<< orphan*/  TTY_OVERRUN ; 
 char TTY_PARITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,char,int /*<<< orphan*/ ) ; 
 struct belkin_sa_private* FUNC6 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC7(struct urb *urb)
{
	struct usb_serial_port *port = urb->context;
	struct belkin_sa_private *priv = FUNC6(port);
	unsigned char *data = urb->transfer_buffer;
	unsigned long flags;
	unsigned char status;
	char tty_flag;

	/* Update line status */
	tty_flag = TTY_NORMAL;

	FUNC1(&priv->lock, flags);
	status = priv->last_lsr;
	priv->last_lsr &= ~BELKIN_SA_LSR_ERR;
	FUNC2(&priv->lock, flags);

	if (!urb->actual_length)
		return;

	if (status & BELKIN_SA_LSR_ERR) {
		/* Break takes precedence over parity, which takes precedence
		 * over framing errors. */
		if (status & BELKIN_SA_LSR_BI)
			tty_flag = TTY_BREAK;
		else if (status & BELKIN_SA_LSR_PE)
			tty_flag = TTY_PARITY;
		else if (status & BELKIN_SA_LSR_FE)
			tty_flag = TTY_FRAME;
		FUNC0(&port->dev, "tty_flag = %d\n", tty_flag);

		/* Overrun is special, not associated with a char. */
		if (status & BELKIN_SA_LSR_OE)
			FUNC4(&port->port, 0, TTY_OVERRUN);
	}

	FUNC5(&port->port, data, tty_flag,
							urb->actual_length);
	FUNC3(&port->port);
}