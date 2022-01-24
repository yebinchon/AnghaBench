#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; scalar_t__ rx; int /*<<< orphan*/  buf_overrun; } ;
struct uart_port {unsigned int read_status_mask; unsigned int fifosize; unsigned int ignore_status_mask; TYPE_2__* state; TYPE_1__ icount; int /*<<< orphan*/  dev; } ;
struct max310x_one {unsigned int* rx_buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 unsigned int MAX310X_LSR_FRERR_BIT ; 
 int /*<<< orphan*/  MAX310X_LSR_IRQSTS_REG ; 
 unsigned int MAX310X_LSR_RXBRK_BIT ; 
 unsigned int MAX310X_LSR_RXOVR_BIT ; 
 unsigned int MAX310X_LSR_RXPAR_BIT ; 
 int /*<<< orphan*/  MAX310X_RHR_REG ; 
 unsigned int TTY_BREAK ; 
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_OVERRUN ; 
 unsigned int TTY_PARITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,unsigned int*,unsigned int) ; 
 unsigned int FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct max310x_one* FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 scalar_t__ FUNC6 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC8 (unsigned int) ; 

__attribute__((used)) static void FUNC9(struct uart_port *port, unsigned int rxlen)
{
	struct max310x_one *one = FUNC3(port);
	unsigned int sts, ch, flag, i;

	if (port->read_status_mask == MAX310X_LSR_RXOVR_BIT) {
		/* We are just reading, happily ignoring any error conditions.
		 * Break condition, parity checking, framing errors -- they
		 * are all ignored. That means that we can do a batch-read.
		 *
		 * There is a small opportunity for race if the RX FIFO
		 * overruns while we're reading the buffer; the datasheets says
		 * that the LSR register applies to the "current" character.
		 * That's also the reason why we cannot do batched reads when
		 * asked to check the individual statuses.
		 * */

		sts = FUNC2(port, MAX310X_LSR_IRQSTS_REG);
		FUNC1(port, one->rx_buf, rxlen);

		port->icount.rx += rxlen;
		flag = TTY_NORMAL;
		sts &= port->read_status_mask;

		if (sts & MAX310X_LSR_RXOVR_BIT) {
			FUNC0(port->dev, "Hardware RX FIFO overrun\n");
			port->icount.overrun++;
		}

		for (i = 0; i < (rxlen - 1); ++i)
			FUNC7(port, sts, 0, one->rx_buf[i], flag);

		/*
		 * Handle the overrun case for the last character only, since
		 * the RxFIFO overflow happens after it is pushed to the FIFO
		 * tail.
		 */
		FUNC7(port, sts, MAX310X_LSR_RXOVR_BIT,
				 one->rx_buf[rxlen-1], flag);

	} else {
		if (FUNC8(rxlen >= port->fifosize)) {
			FUNC0(port->dev, "Possible RX FIFO overrun\n");
			port->icount.buf_overrun++;
			/* Ensure sanity of RX level */
			rxlen = port->fifosize;
		}

		while (rxlen--) {
			ch = FUNC2(port, MAX310X_RHR_REG);
			sts = FUNC2(port, MAX310X_LSR_IRQSTS_REG);

			sts &= MAX310X_LSR_RXPAR_BIT | MAX310X_LSR_FRERR_BIT |
			       MAX310X_LSR_RXOVR_BIT | MAX310X_LSR_RXBRK_BIT;

			port->icount.rx++;
			flag = TTY_NORMAL;

			if (FUNC8(sts)) {
				if (sts & MAX310X_LSR_RXBRK_BIT) {
					port->icount.brk++;
					if (FUNC5(port))
						continue;
				} else if (sts & MAX310X_LSR_RXPAR_BIT)
					port->icount.parity++;
				else if (sts & MAX310X_LSR_FRERR_BIT)
					port->icount.frame++;
				else if (sts & MAX310X_LSR_RXOVR_BIT)
					port->icount.overrun++;

				sts &= port->read_status_mask;
				if (sts & MAX310X_LSR_RXBRK_BIT)
					flag = TTY_BREAK;
				else if (sts & MAX310X_LSR_RXPAR_BIT)
					flag = TTY_PARITY;
				else if (sts & MAX310X_LSR_FRERR_BIT)
					flag = TTY_FRAME;
				else if (sts & MAX310X_LSR_RXOVR_BIT)
					flag = TTY_OVERRUN;
			}

			if (FUNC6(port, ch))
				continue;

			if (sts & port->ignore_status_mask)
				continue;

			FUNC7(port, sts, MAX310X_LSR_RXOVR_BIT, ch, flag);
		}
	}

	FUNC4(&port->state->port);
}