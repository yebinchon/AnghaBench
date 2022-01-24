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
struct mxser_port {int /*<<< orphan*/  slock; scalar_t__ ioaddr; int /*<<< orphan*/  MCR; } ;

/* Variables and functions */
 int EIO ; 
 int ENOIOCTLCMD ; 
 scalar_t__ MXSER_PORTS ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 scalar_t__ UART_MCR ; 
 int /*<<< orphan*/  UART_MCR_DTR ; 
 int /*<<< orphan*/  UART_MCR_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (struct tty_struct*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty,
		unsigned int set, unsigned int clear)
{
	struct mxser_port *info = tty->driver_data;
	unsigned long flags;


	if (tty->index == MXSER_PORTS)
		return -ENOIOCTLCMD;
	if (FUNC3(tty))
		return -EIO;

	FUNC1(&info->slock, flags);

	if (set & TIOCM_RTS)
		info->MCR |= UART_MCR_RTS;
	if (set & TIOCM_DTR)
		info->MCR |= UART_MCR_DTR;

	if (clear & TIOCM_RTS)
		info->MCR &= ~UART_MCR_RTS;
	if (clear & TIOCM_DTR)
		info->MCR &= ~UART_MCR_DTR;

	FUNC0(info->MCR, info->ioaddr + UART_MCR);
	FUNC2(&info->slock, flags);
	return 0;
}