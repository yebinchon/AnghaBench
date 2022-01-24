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
typedef  int /*<<< orphan*/  u8 ;
struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct mxuport_port {int /*<<< orphan*/  mutex; int /*<<< orphan*/  mcr_state; } ;

/* Variables and functions */
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  UART_MCR_DTR ; 
 int /*<<< orphan*/  UART_MCR_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct usb_serial_port*,int /*<<< orphan*/ ) ; 
 struct mxuport_port* FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty, unsigned int set,
			    unsigned int clear)
{
	struct usb_serial_port *port = tty->driver_data;
	struct mxuport_port *mxport = FUNC3(port);
	int err;
	u8 mcr_state;

	FUNC0(&mxport->mutex);
	mcr_state = mxport->mcr_state;

	if (set & TIOCM_RTS)
		mcr_state |= UART_MCR_RTS;

	if (set & TIOCM_DTR)
		mcr_state |= UART_MCR_DTR;

	if (clear & TIOCM_RTS)
		mcr_state &= ~UART_MCR_RTS;

	if (clear & TIOCM_DTR)
		mcr_state &= ~UART_MCR_DTR;

	err = FUNC2(port, mcr_state);
	if (!err)
		mxport->mcr_state = mcr_state;

	FUNC1(&mxport->mutex);

	return err;
}