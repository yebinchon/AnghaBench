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
struct TYPE_4__ {int tx; } ;
struct uart_port {int /*<<< orphan*/  dev; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {int tail; int /*<<< orphan*/  head; } ;
struct atmel_dma_buffer {int ofs; int dma_addr; int /*<<< orphan*/  dma_size; } ;
struct atmel_uart_port {int tx_done_mask; struct atmel_dma_buffer pdc_tx; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_PDC_PTCR ; 
 int /*<<< orphan*/  ATMEL_PDC_TCR ; 
 int /*<<< orphan*/  ATMEL_PDC_TPR ; 
 int ATMEL_PDC_TXTDIS ; 
 int ATMEL_PDC_TXTEN ; 
 int /*<<< orphan*/  ATMEL_US_IER ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 scalar_t__ FUNC2 (struct uart_port*) ; 
 scalar_t__ FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atmel_uart_port* FUNC6 (struct uart_port*) ; 
 scalar_t__ FUNC7 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_port*) ; 

__attribute__((used)) static void FUNC11(struct uart_port *port)
{
	struct atmel_uart_port *atmel_port = FUNC6(port);
	struct circ_buf *xmit = &port->state->xmit;
	struct atmel_dma_buffer *pdc = &atmel_port->pdc_tx;
	int count;

	/* nothing left to transmit? */
	if (FUNC3(port, ATMEL_PDC_TCR))
		return;

	xmit->tail += pdc->ofs;
	xmit->tail &= UART_XMIT_SIZE - 1;

	port->icount.tx += pdc->ofs;
	pdc->ofs = 0;

	/* more to transmit - setup next transfer */

	/* disable PDC transmit */
	FUNC4(port, ATMEL_PDC_PTCR, ATMEL_PDC_TXTDIS);

	if (!FUNC8(xmit) && !FUNC9(port)) {
		FUNC5(port->dev,
					   pdc->dma_addr,
					   pdc->dma_size,
					   DMA_TO_DEVICE);

		count = FUNC0(xmit->head, xmit->tail, UART_XMIT_SIZE);
		pdc->ofs = count;

		FUNC4(port, ATMEL_PDC_TPR,
				  pdc->dma_addr + xmit->tail);
		FUNC4(port, ATMEL_PDC_TCR, count);
		/* re-enable PDC transmit */
		FUNC4(port, ATMEL_PDC_PTCR, ATMEL_PDC_TXTEN);
		/* Enable interrupts */
		FUNC4(port, ATMEL_US_IER,
				  atmel_port->tx_done_mask);
	} else {
		if (FUNC2(port)) {
			/* DMA done, stop TX, start RX for RS485 */
			FUNC1(port);
		}
	}

	if (FUNC7(xmit) < WAKEUP_CHARS)
		FUNC10(port);
}