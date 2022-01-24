#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int hw_stopped; int /*<<< orphan*/  flags; } ;
struct tty_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  console; } ;
struct fwtty_port {int mctrl; int mstatus; int /*<<< orphan*/  lock; TYPE_1__ port; int /*<<< orphan*/  max_payload; int /*<<< orphan*/  tx_fifo; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FWTTY_PORT_MAX_PEND_DMA ; 
 int /*<<< orphan*/  FWTTY_PORT_TXFIFO_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TIOCM_CTS ; 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fwtty_port* port ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (struct fwtty_port*,struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct fwtty_port* FUNC9 (struct tty_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct tty_port *tty_port,
			       struct tty_struct *tty)
{
	struct fwtty_port *port = FUNC9(tty_port, port);
	unsigned int baud;
	int err;

	FUNC5(TTY_IO_ERROR, &tty->flags);

	err = FUNC4(&port->tx_fifo, FWTTY_PORT_TXFIFO_LEN,
			     FUNC2(),
			     port->max_payload,
			     FWTTY_PORT_MAX_PEND_DMA,
			     GFP_KERNEL);
	if (err)
		return err;

	FUNC7(&port->lock);

	baud = FUNC6(port, tty);

	/* if console, don't change carrier state */
	if (!port->port.console) {
		port->mctrl = 0;
		if (baud != 0)
			port->mctrl = TIOCM_DTR | TIOCM_RTS;
	}

	if (FUNC0(tty) && ~port->mstatus & TIOCM_CTS)
		tty->hw_stopped = 1;

	FUNC1(port);
	FUNC8(&port->lock);

	FUNC3(TTY_IO_ERROR, &tty->flags);

	return 0;
}