#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; } ;
struct TYPE_8__ {unsigned int read_status_mask; int /*<<< orphan*/  lock; TYPE_2__* state; scalar_t__ sysrq; TYPE_1__ icount; } ;
struct pnx8xxx_port {TYPE_3__ port; } ;
struct TYPE_7__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  PNX8XXX_FIFO ; 
 int /*<<< orphan*/  PNX8XXX_ISTAT ; 
 int /*<<< orphan*/  PNX8XXX_LCR ; 
 int PNX8XXX_UART_FIFO_RXBRK ; 
 int PNX8XXX_UART_FIFO_RXFE ; 
 int PNX8XXX_UART_FIFO_RXFIFO ; 
 int PNX8XXX_UART_FIFO_RXPAR ; 
 int PNX8XXX_UART_INT_RXOVRN ; 
 int PNX8XXX_UART_LCR_RX_NEXT ; 
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_PARITY ; 
 int FUNC2 (struct pnx8xxx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pnx8xxx_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,unsigned int,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC10(struct pnx8xxx_port *sport)
{
	unsigned int status, ch, flg;

	status = FUNC0(FUNC2(sport, PNX8XXX_FIFO)) |
		 FUNC1(FUNC2(sport, PNX8XXX_ISTAT));
	while (status & FUNC0(PNX8XXX_UART_FIFO_RXFIFO)) {
		ch = FUNC2(sport, PNX8XXX_FIFO) & 0xff;

		sport->port.icount.rx++;

		flg = TTY_NORMAL;

		/*
		 * note that the error handling code is
		 * out of the main execution path
		 */
		if (status & (FUNC0(PNX8XXX_UART_FIFO_RXFE |
					PNX8XXX_UART_FIFO_RXPAR |
					PNX8XXX_UART_FIFO_RXBRK) |
			      FUNC1(PNX8XXX_UART_INT_RXOVRN))) {
			if (status & FUNC0(PNX8XXX_UART_FIFO_RXBRK)) {
				status &= ~(FUNC0(PNX8XXX_UART_FIFO_RXFE) |
					FUNC0(PNX8XXX_UART_FIFO_RXPAR));
				sport->port.icount.brk++;
				if (FUNC7(&sport->port))
					goto ignore_char;
			} else if (status & FUNC0(PNX8XXX_UART_FIFO_RXPAR))
				sport->port.icount.parity++;
			else if (status & FUNC0(PNX8XXX_UART_FIFO_RXFE))
				sport->port.icount.frame++;
			if (status & FUNC1(PNX8XXX_UART_INT_RXOVRN))
				sport->port.icount.overrun++;

			status &= sport->port.read_status_mask;

			if (status & FUNC0(PNX8XXX_UART_FIFO_RXPAR))
				flg = TTY_PARITY;
			else if (status & FUNC0(PNX8XXX_UART_FIFO_RXFE))
				flg = TTY_FRAME;

#ifdef SUPPORT_SYSRQ
			sport->port.sysrq = 0;
#endif
		}

		if (FUNC8(&sport->port, ch))
			goto ignore_char;

		FUNC9(&sport->port, status,
				FUNC1(PNX8XXX_UART_INT_RXOVRN), ch, flg);

	ignore_char:
		FUNC3(sport, PNX8XXX_LCR, FUNC2(sport, PNX8XXX_LCR) |
				PNX8XXX_UART_LCR_RX_NEXT);
		status = FUNC0(FUNC2(sport, PNX8XXX_FIFO)) |
			 FUNC1(FUNC2(sport, PNX8XXX_ISTAT));
	}

	FUNC5(&sport->port.lock);
	FUNC6(&sport->port.state->port);
	FUNC4(&sport->port.lock);
}