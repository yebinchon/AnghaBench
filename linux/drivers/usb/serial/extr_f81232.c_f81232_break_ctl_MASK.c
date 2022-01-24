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
struct usb_serial_port {int /*<<< orphan*/  dev; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct f81232_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  shadow_lcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_CONTROL_REGISTER ; 
 int /*<<< orphan*/  UART_LCR_SBC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct usb_serial_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct f81232_private* FUNC4 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty, int break_state)
{
	struct usb_serial_port *port = tty->driver_data;
	struct f81232_private *priv = FUNC4(port);
	int status;

	FUNC2(&priv->lock);

	if (break_state)
		priv->shadow_lcr |= UART_LCR_SBC;
	else
		priv->shadow_lcr &= ~UART_LCR_SBC;

	status = FUNC1(port, LINE_CONTROL_REGISTER,
					priv->shadow_lcr);
	if (status)
		FUNC0(&port->dev, "set break failed: %d\n", status);

	FUNC3(&priv->lock);
}