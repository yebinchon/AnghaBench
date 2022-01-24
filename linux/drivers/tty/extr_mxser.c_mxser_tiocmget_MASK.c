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
struct tty_struct {scalar_t__ index; struct mxser_port* driver_data; } ;
struct mxser_port {unsigned char MCR; int /*<<< orphan*/  slock; scalar_t__ ioaddr; } ;

/* Variables and functions */
 int EIO ; 
 int ENOIOCTLCMD ; 
 scalar_t__ MXSER_PORTS ; 
 int TIOCM_CAR ; 
 int TIOCM_CTS ; 
 int TIOCM_DSR ; 
 int TIOCM_DTR ; 
 int TIOCM_RNG ; 
 int TIOCM_RTS ; 
 unsigned char UART_MCR_DTR ; 
 unsigned char UART_MCR_RTS ; 
 scalar_t__ UART_MSR ; 
 unsigned char UART_MSR_ANY_DELTA ; 
 unsigned char UART_MSR_CTS ; 
 unsigned char UART_MSR_DCD ; 
 unsigned char UART_MSR_DSR ; 
 unsigned char UART_MSR_RI ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,struct mxser_port*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty)
{
	struct mxser_port *info = tty->driver_data;
	unsigned char control, status;
	unsigned long flags;


	if (tty->index == MXSER_PORTS)
		return -ENOIOCTLCMD;
	if (FUNC4(tty))
		return -EIO;

	control = info->MCR;

	FUNC2(&info->slock, flags);
	status = FUNC0(info->ioaddr + UART_MSR);
	if (status & UART_MSR_ANY_DELTA)
		FUNC1(tty, info, status);
	FUNC3(&info->slock, flags);
	return ((control & UART_MCR_RTS) ? TIOCM_RTS : 0) |
		    ((control & UART_MCR_DTR) ? TIOCM_DTR : 0) |
		    ((status & UART_MSR_DCD) ? TIOCM_CAR : 0) |
		    ((status & UART_MSR_RI) ? TIOCM_RNG : 0) |
		    ((status & UART_MSR_DSR) ? TIOCM_DSR : 0) |
		    ((status & UART_MSR_CTS) ? TIOCM_CTS : 0);
}