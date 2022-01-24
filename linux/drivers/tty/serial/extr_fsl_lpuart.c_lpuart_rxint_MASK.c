#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_port {int dummy; } ;
struct TYPE_5__ {unsigned int overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  rx; } ;
struct TYPE_6__ {unsigned char ignore_status_mask; unsigned char read_status_mask; int /*<<< orphan*/  lock; scalar_t__ membase; TYPE_2__ icount; scalar_t__ sysrq; TYPE_1__* state; } ;
struct lpuart_port {TYPE_3__ port; } ;
struct TYPE_4__ {struct tty_port port; } ;

/* Variables and functions */
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_OVERRUN ; 
 unsigned int TTY_PARITY ; 
 scalar_t__ UARTCFIFO ; 
 int /*<<< orphan*/  UARTCFIFO_RXFLUSH ; 
 scalar_t__ UARTDR ; 
 scalar_t__ UARTSFIFO ; 
 unsigned char UARTSFIFO_RXEMPT ; 
 int /*<<< orphan*/  UARTSFIFO_RXOF ; 
 scalar_t__ UARTSR1 ; 
 unsigned char UARTSR1_FE ; 
 unsigned char UARTSR1_OR ; 
 unsigned char UARTSR1_PE ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*,unsigned char,unsigned int) ; 
 scalar_t__ FUNC5 (TYPE_3__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct lpuart_port *sport)
{
	unsigned int flg, ignored = 0, overrun = 0;
	struct tty_port *port = &sport->port.state->port;
	unsigned long flags;
	unsigned char rx, sr;

	FUNC1(&sport->port.lock, flags);

	while (!(FUNC0(sport->port.membase + UARTSFIFO) & UARTSFIFO_RXEMPT)) {
		flg = TTY_NORMAL;
		sport->port.icount.rx++;
		/*
		 * to clear the FE, OR, NF, FE, PE flags,
		 * read SR1 then read DR
		 */
		sr = FUNC0(sport->port.membase + UARTSR1);
		rx = FUNC0(sport->port.membase + UARTDR);

		if (FUNC5(&sport->port, (unsigned char)rx))
			continue;

		if (sr & (UARTSR1_PE | UARTSR1_OR | UARTSR1_FE)) {
			if (sr & UARTSR1_PE)
				sport->port.icount.parity++;
			else if (sr & UARTSR1_FE)
				sport->port.icount.frame++;

			if (sr & UARTSR1_OR)
				overrun++;

			if (sr & sport->port.ignore_status_mask) {
				if (++ignored > 100)
					goto out;
				continue;
			}

			sr &= sport->port.read_status_mask;

			if (sr & UARTSR1_PE)
				flg = TTY_PARITY;
			else if (sr & UARTSR1_FE)
				flg = TTY_FRAME;

			if (sr & UARTSR1_OR)
				flg = TTY_OVERRUN;

#ifdef SUPPORT_SYSRQ
			sport->port.sysrq = 0;
#endif
		}

		FUNC4(port, rx, flg);
	}

out:
	if (overrun) {
		sport->port.icount.overrun += overrun;

		/*
		 * Overruns cause FIFO pointers to become missaligned.
		 * Flushing the receive FIFO reinitializes the pointers.
		 */
		FUNC6(UARTCFIFO_RXFLUSH, sport->port.membase + UARTCFIFO);
		FUNC6(UARTSFIFO_RXOF, sport->port.membase + UARTSFIFO);
	}

	FUNC2(&sport->port.lock, flags);

	FUNC3(port);
}