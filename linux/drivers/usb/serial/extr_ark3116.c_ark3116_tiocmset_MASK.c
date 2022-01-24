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
struct usb_serial_port {int /*<<< orphan*/  serial; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct ark3116_private {int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  mcr; } ;

/* Variables and functions */
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_OUT1 ; 
 unsigned int TIOCM_OUT2 ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  UART_MCR ; 
 int /*<<< orphan*/  UART_MCR_DTR ; 
 int /*<<< orphan*/  UART_MCR_OUT1 ; 
 int /*<<< orphan*/  UART_MCR_OUT2 ; 
 int /*<<< orphan*/  UART_MCR_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ark3116_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty,
			unsigned set, unsigned clr)
{
	struct usb_serial_port *port = tty->driver_data;
	struct ark3116_private *priv = FUNC3(port);

	/* we need to take the mutex here, to make sure that the value
	 * in priv->mcr is actually the one that is in the hardware
	 */

	FUNC1(&priv->hw_lock);

	if (set & TIOCM_RTS)
		priv->mcr |= UART_MCR_RTS;
	if (set & TIOCM_DTR)
		priv->mcr |= UART_MCR_DTR;
	if (set & TIOCM_OUT1)
		priv->mcr |= UART_MCR_OUT1;
	if (set & TIOCM_OUT2)
		priv->mcr |= UART_MCR_OUT2;
	if (clr & TIOCM_RTS)
		priv->mcr &= ~UART_MCR_RTS;
	if (clr & TIOCM_DTR)
		priv->mcr &= ~UART_MCR_DTR;
	if (clr & TIOCM_OUT1)
		priv->mcr &= ~UART_MCR_OUT1;
	if (clr & TIOCM_OUT2)
		priv->mcr &= ~UART_MCR_OUT2;

	FUNC0(port->serial, UART_MCR, priv->mcr);

	FUNC2(&priv->hw_lock);

	return 0;
}