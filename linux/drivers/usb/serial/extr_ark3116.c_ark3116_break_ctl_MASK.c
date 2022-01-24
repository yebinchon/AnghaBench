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
struct ark3116_private {int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  lcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_LCR ; 
 int /*<<< orphan*/  UART_LCR_SBC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ark3116_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty, int break_state)
{
	struct usb_serial_port *port = tty->driver_data;
	struct ark3116_private *priv = FUNC3(port);

	/* LCR is also used for other things: protect access */
	FUNC1(&priv->hw_lock);

	if (break_state)
		priv->lcr |= UART_LCR_SBC;
	else
		priv->lcr &= ~UART_LCR_SBC;

	FUNC0(port->serial, UART_LCR, priv->lcr);

	FUNC2(&priv->hw_lock);
}