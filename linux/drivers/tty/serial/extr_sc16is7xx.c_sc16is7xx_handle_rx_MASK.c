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
struct TYPE_3__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; int /*<<< orphan*/  buf_overrun; } ;
struct uart_port {unsigned int read_status_mask; unsigned int ignore_status_mask; TYPE_2__* state; TYPE_1__ icount; int /*<<< orphan*/  line; int /*<<< orphan*/  dev; } ;
struct sc16is7xx_port {unsigned int* buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 unsigned int SC16IS7XX_IIR_RLSE_SRC ; 
 unsigned int SC16IS7XX_LSR_BI_BIT ; 
 unsigned int SC16IS7XX_LSR_BRK_ERROR_MASK ; 
 unsigned int SC16IS7XX_LSR_FE_BIT ; 
 unsigned int SC16IS7XX_LSR_FIFOE_BIT ; 
 unsigned int SC16IS7XX_LSR_OE_BIT ; 
 unsigned int SC16IS7XX_LSR_PE_BIT ; 
 int /*<<< orphan*/  SC16IS7XX_LSR_REG ; 
 int /*<<< orphan*/  SC16IS7XX_RHR_REG ; 
 unsigned int TTY_BREAK ; 
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_OVERRUN ; 
 unsigned int TTY_PARITY ; 
 struct sc16is7xx_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,unsigned int) ; 
 void* FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 scalar_t__ FUNC6 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC8 (unsigned int) ; 

__attribute__((used)) static void FUNC9(struct uart_port *port, unsigned int rxlen,
				unsigned int iir)
{
	struct sc16is7xx_port *s = FUNC0(port->dev);
	unsigned int lsr = 0, ch, flag, bytes_read, i;
	bool read_lsr = (iir == SC16IS7XX_IIR_RLSE_SRC) ? true : false;

	if (FUNC8(rxlen >= sizeof(s->buf))) {
		FUNC1(port->dev,
				     "ttySC%i: Possible RX FIFO overrun: %d\n",
				     port->line, rxlen);
		port->icount.buf_overrun++;
		/* Ensure sanity of RX level */
		rxlen = sizeof(s->buf);
	}

	while (rxlen) {
		/* Only read lsr if there are possible errors in FIFO */
		if (read_lsr) {
			lsr = FUNC3(port, SC16IS7XX_LSR_REG);
			if (!(lsr & SC16IS7XX_LSR_FIFOE_BIT))
				read_lsr = false; /* No errors left in FIFO */
		} else
			lsr = 0;

		if (read_lsr) {
			s->buf[0] = FUNC3(port, SC16IS7XX_RHR_REG);
			bytes_read = 1;
		} else {
			FUNC2(port, rxlen);
			bytes_read = rxlen;
		}

		lsr &= SC16IS7XX_LSR_BRK_ERROR_MASK;

		port->icount.rx++;
		flag = TTY_NORMAL;

		if (FUNC8(lsr)) {
			if (lsr & SC16IS7XX_LSR_BI_BIT) {
				port->icount.brk++;
				if (FUNC5(port))
					continue;
			} else if (lsr & SC16IS7XX_LSR_PE_BIT)
				port->icount.parity++;
			else if (lsr & SC16IS7XX_LSR_FE_BIT)
				port->icount.frame++;
			else if (lsr & SC16IS7XX_LSR_OE_BIT)
				port->icount.overrun++;

			lsr &= port->read_status_mask;
			if (lsr & SC16IS7XX_LSR_BI_BIT)
				flag = TTY_BREAK;
			else if (lsr & SC16IS7XX_LSR_PE_BIT)
				flag = TTY_PARITY;
			else if (lsr & SC16IS7XX_LSR_FE_BIT)
				flag = TTY_FRAME;
			else if (lsr & SC16IS7XX_LSR_OE_BIT)
				flag = TTY_OVERRUN;
		}

		for (i = 0; i < bytes_read; ++i) {
			ch = s->buf[i];
			if (FUNC6(port, ch))
				continue;

			if (lsr & port->ignore_status_mask)
				continue;

			FUNC7(port, lsr, SC16IS7XX_LSR_OE_BIT, ch,
					 flag);
		}
		rxlen -= bytes_read;
	}

	FUNC4(&port->state->port);
}