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
struct TYPE_6__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  parity; int /*<<< orphan*/  frame; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; } ;
struct uart_port {unsigned long read_status_mask; TYPE_3__ icount; int /*<<< orphan*/  irq; TYPE_1__* state; } ;
struct tty_port {TYPE_2__* tty; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct tty_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASC_CTL ; 
 unsigned long ASC_CTL_MODE_8BIT ; 
 unsigned long ASC_CTL_MODE_8BIT_PAR ; 
 unsigned long ASC_CTL_MODE_MSK ; 
 int /*<<< orphan*/  ASC_RXBUF ; 
 unsigned long ASC_RXBUF_DUMMY_BE ; 
 unsigned long ASC_RXBUF_DUMMY_OE ; 
 unsigned long ASC_RXBUF_DUMMY_RX ; 
 unsigned long ASC_RXBUF_FE ; 
 unsigned long ASC_RXBUF_PE ; 
 int /*<<< orphan*/  ASC_STA ; 
 unsigned long ASC_STA_OE ; 
 unsigned long ASC_STA_RBF ; 
 char TTY_BREAK ; 
 char TTY_FRAME ; 
 char TTY_NORMAL ; 
 char TTY_PARITY ; 
 unsigned long FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 scalar_t__ FUNC6 (struct uart_port*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,unsigned long,unsigned long,unsigned long,char) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port)
{
	struct tty_port *tport = &port->state->port;
	unsigned long status, mode;
	unsigned long c = 0;
	char flag;
	bool ignore_pe = false;

	/*
	 * Datasheet states: If the MODE field selects an 8-bit frame then
	 * this [parity error] bit is undefined. Software should ignore this
	 * bit when reading 8-bit frames.
	 */
	mode = FUNC0(port, ASC_CTL) & ASC_CTL_MODE_MSK;
	if (mode == ASC_CTL_MODE_8BIT || mode == ASC_CTL_MODE_8BIT_PAR)
		ignore_pe = true;

	if (FUNC2(FUNC1(port->irq)))
		FUNC3(tport->tty->dev, 0);

	while ((status = FUNC0(port, ASC_STA)) & ASC_STA_RBF) {
		c = FUNC0(port, ASC_RXBUF) | ASC_RXBUF_DUMMY_RX;
		flag = TTY_NORMAL;
		port->icount.rx++;

		if (status & ASC_STA_OE || c & ASC_RXBUF_FE ||
		    (c & ASC_RXBUF_PE && !ignore_pe)) {

			if (c & ASC_RXBUF_FE) {
				if (c == (ASC_RXBUF_FE | ASC_RXBUF_DUMMY_RX)) {
					port->icount.brk++;
					if (FUNC5(port))
						continue;
					c |= ASC_RXBUF_DUMMY_BE;
				} else {
					port->icount.frame++;
				}
			} else if (c & ASC_RXBUF_PE) {
				port->icount.parity++;
			}
			/*
			 * Reading any data from the RX FIFO clears the
			 * overflow error condition.
			 */
			if (status & ASC_STA_OE) {
				port->icount.overrun++;
				c |= ASC_RXBUF_DUMMY_OE;
			}

			c &= port->read_status_mask;

			if (c & ASC_RXBUF_DUMMY_BE)
				flag = TTY_BREAK;
			else if (c & ASC_RXBUF_PE)
				flag = TTY_PARITY;
			else if (c & ASC_RXBUF_FE)
				flag = TTY_FRAME;
		}

		if (FUNC6(port, c & 0xff))
			continue;

		FUNC7(port, c, ASC_RXBUF_DUMMY_OE, c & 0xff, flag);
	}

	/* Tell the rest of the system the news. New characters! */
	FUNC4(tport);
}