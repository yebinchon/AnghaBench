#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tty_port {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  rx; } ;
struct TYPE_7__ {unsigned long ignore_status_mask; unsigned long read_status_mask; int /*<<< orphan*/  lock; scalar_t__ sysrq; TYPE_2__ icount; TYPE_1__* state; } ;
struct lpuart_port {TYPE_3__ port; } ;
struct TYPE_5__ {struct tty_port port; } ;

/* Variables and functions */
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_OVERRUN ; 
 unsigned int TTY_PARITY ; 
 int /*<<< orphan*/  UARTDATA ; 
 int /*<<< orphan*/  UARTFIFO ; 
 unsigned long UARTFIFO_RXEMPT ; 
 int /*<<< orphan*/  UARTSTAT ; 
 unsigned long UARTSTAT_FE ; 
 unsigned long UARTSTAT_OR ; 
 unsigned long UARTSTAT_PE ; 
 unsigned long FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*,unsigned long,unsigned int) ; 
 scalar_t__ FUNC5 (TYPE_3__*,unsigned char) ; 

__attribute__((used)) static void FUNC6(struct lpuart_port *sport)
{
	unsigned int flg, ignored = 0;
	struct tty_port *port = &sport->port.state->port;
	unsigned long flags;
	unsigned long rx, sr;

	FUNC1(&sport->port.lock, flags);

	while (!(FUNC0(&sport->port, UARTFIFO) & UARTFIFO_RXEMPT)) {
		flg = TTY_NORMAL;
		sport->port.icount.rx++;
		/*
		 * to clear the FE, OR, NF, FE, PE flags,
		 * read STAT then read DATA reg
		 */
		sr = FUNC0(&sport->port, UARTSTAT);
		rx = FUNC0(&sport->port, UARTDATA);
		rx &= 0x3ff;

		if (FUNC5(&sport->port, (unsigned char)rx))
			continue;

		if (sr & (UARTSTAT_PE | UARTSTAT_OR | UARTSTAT_FE)) {
			if (sr & UARTSTAT_PE)
				sport->port.icount.parity++;
			else if (sr & UARTSTAT_FE)
				sport->port.icount.frame++;

			if (sr & UARTSTAT_OR)
				sport->port.icount.overrun++;

			if (sr & sport->port.ignore_status_mask) {
				if (++ignored > 100)
					goto out;
				continue;
			}

			sr &= sport->port.read_status_mask;

			if (sr & UARTSTAT_PE)
				flg = TTY_PARITY;
			else if (sr & UARTSTAT_FE)
				flg = TTY_FRAME;

			if (sr & UARTSTAT_OR)
				flg = TTY_OVERRUN;

#ifdef SUPPORT_SYSRQ
			sport->port.sysrq = 0;
#endif
		}

		FUNC4(port, rx, flg);
	}

out:
	FUNC2(&sport->port.lock, flags);

	FUNC3(port);
}