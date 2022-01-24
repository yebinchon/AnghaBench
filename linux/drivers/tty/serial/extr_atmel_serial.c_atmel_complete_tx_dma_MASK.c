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
struct TYPE_4__ {int /*<<< orphan*/  tx; } ;
struct uart_port {int /*<<< orphan*/  lock; TYPE_2__ icount; TYPE_1__* state; } ;
struct dma_chan {int dummy; } ;
struct circ_buf {int tail; } ;
struct atmel_uart_port {int hd_start_rx; int /*<<< orphan*/  tx_done_mask; int /*<<< orphan*/  tasklet_tx; int /*<<< orphan*/  lock_tx; int /*<<< orphan*/ * desc_tx; int /*<<< orphan*/  cookie_tx; scalar_t__ tx_len; struct dma_chan* chan_tx; struct uart_port uart; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_US_IER ; 
 int /*<<< orphan*/  EINVAL ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_uart_port*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC10 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_port*) ; 

__attribute__((used)) static void FUNC12(void *arg)
{
	struct atmel_uart_port *atmel_port = arg;
	struct uart_port *port = &atmel_port->uart;
	struct circ_buf *xmit = &port->state->xmit;
	struct dma_chan *chan = atmel_port->chan_tx;
	unsigned long flags;

	FUNC6(&port->lock, flags);

	if (chan)
		FUNC4(chan);
	xmit->tail += atmel_port->tx_len;
	xmit->tail &= UART_XMIT_SIZE - 1;

	port->icount.tx += atmel_port->tx_len;

	FUNC5(&atmel_port->lock_tx);
	FUNC0(atmel_port->desc_tx);
	atmel_port->cookie_tx = -EINVAL;
	atmel_port->desc_tx = NULL;
	FUNC7(&atmel_port->lock_tx);

	if (FUNC9(xmit) < WAKEUP_CHARS)
		FUNC11(port);

	/*
	 * xmit is a circular buffer so, if we have just send data from
	 * xmit->tail to the end of xmit->buf, now we have to transmit the
	 * remaining data from the beginning of xmit->buf to xmit->head.
	 */
	if (!FUNC10(xmit))
		FUNC1(atmel_port, &atmel_port->tasklet_tx);
	else if (FUNC2(port)) {
		/*
		 * DMA done, re-enable TXEMPTY and signal that we can stop
		 * TX and start RX for RS485
		 */
		atmel_port->hd_start_rx = true;
		FUNC3(port, ATMEL_US_IER,
				  atmel_port->tx_done_mask);
	}

	FUNC8(&port->lock, flags);
}