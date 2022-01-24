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
typedef  int u8 ;
struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct f81232_private {int modem_control; int modem_status; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int TIOCM_CAR ; 
 int TIOCM_CTS ; 
 int TIOCM_DSR ; 
 int TIOCM_DTR ; 
 int TIOCM_RI ; 
 int TIOCM_RTS ; 
 int UART_MCR_DTR ; 
 int UART_MCR_RTS ; 
 int UART_MSR_CTS ; 
 int UART_MSR_DCD ; 
 int UART_MSR_DSR ; 
 int UART_MSR_RI ; 
 int /*<<< orphan*/  FUNC0 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct f81232_private* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty)
{
	int r;
	struct usb_serial_port *port = tty->driver_data;
	struct f81232_private *port_priv = FUNC3(port);
	u8 mcr, msr;

	/* force get current MSR changed state */
	FUNC0(port);

	FUNC1(&port_priv->lock);
	mcr = port_priv->modem_control;
	msr = port_priv->modem_status;
	FUNC2(&port_priv->lock);

	r = (mcr & UART_MCR_DTR ? TIOCM_DTR : 0) |
		(mcr & UART_MCR_RTS ? TIOCM_RTS : 0) |
		(msr & UART_MSR_CTS ? TIOCM_CTS : 0) |
		(msr & UART_MSR_DCD ? TIOCM_CAR : 0) |
		(msr & UART_MSR_RI ? TIOCM_RI : 0) |
		(msr & UART_MSR_DSR ? TIOCM_DSR : 0);

	return r;
}