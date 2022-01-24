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
struct uart_port {unsigned int (* serial_in ) (struct uart_port*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  private_data; } ;
struct uart_8250_port {int /*<<< orphan*/  dma; } ;
struct dw8250_data {int /*<<< orphan*/  usr_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IIR ; 
 unsigned int UART_IIR_BUSY ; 
 unsigned int UART_IIR_RX_TIMEOUT ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned int UART_LSR_BI ; 
 unsigned int UART_LSR_DR ; 
 int /*<<< orphan*/  UART_RX ; 
 scalar_t__ FUNC0 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct uart_port*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct uart_port*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct dw8250_data* FUNC7 (int /*<<< orphan*/ ) ; 
 struct uart_8250_port* FUNC8 (struct uart_port*) ; 

__attribute__((used)) static int FUNC9(struct uart_port *p)
{
	struct uart_8250_port *up = FUNC8(p);
	struct dw8250_data *d = FUNC7(p->private_data);
	unsigned int iir = p->serial_in(p, UART_IIR);
	unsigned int status;
	unsigned long flags;

	/*
	 * There are ways to get Designware-based UARTs into a state where
	 * they are asserting UART_IIR_RX_TIMEOUT but there is no actual
	 * data available.  If we see such a case then we'll do a bogus
	 * read.  If we don't do this then the "RX TIMEOUT" interrupt will
	 * fire forever.
	 *
	 * This problem has only been observed so far when not in DMA mode
	 * so we limit the workaround only to non-DMA mode.
	 */
	if (!up->dma && ((iir & 0x3f) == UART_IIR_RX_TIMEOUT)) {
		FUNC1(&p->lock, flags);
		status = p->serial_in(p, UART_LSR);

		if (!(status & (UART_LSR_DR | UART_LSR_BI)))
			(void) p->serial_in(p, UART_RX);

		FUNC2(&p->lock, flags);
	}

	if (FUNC0(p, iir))
		return 1;

	if ((iir & UART_IIR_BUSY) == UART_IIR_BUSY) {
		/* Clear the USR */
		(void)p->serial_in(p, d->usr_reg);

		return 1;
	}

	return 0;
}