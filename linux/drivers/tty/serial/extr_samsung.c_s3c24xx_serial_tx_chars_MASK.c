#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  tx; } ;
struct uart_port {int fifosize; int /*<<< orphan*/  lock; TYPE_4__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct s3c24xx_uart_port {int min_dma_size; TYPE_3__* info; TYPE_2__* dma; struct uart_port port; } ;
struct circ_buf {int tail; scalar_t__* buf; int /*<<< orphan*/  head; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_7__ {int tx_fifofull; } ;
struct TYPE_6__ {scalar_t__ tx_chan; } ;
struct TYPE_5__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  S3C2410_UFSTAT ; 
 int /*<<< orphan*/  S3C2410_UTXH ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int FUNC1 () ; 
 int FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c24xx_uart_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (struct circ_buf*) ; 
 scalar_t__ FUNC10 (struct circ_buf*) ; 
 scalar_t__ FUNC11 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC13 (struct uart_port*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *id)
{
	struct s3c24xx_uart_port *ourport = id;
	struct uart_port *port = &ourport->port;
	struct circ_buf *xmit = &port->state->xmit;
	unsigned long flags;
	int count, dma_count = 0;

	FUNC6(&port->lock, flags);

	count = FUNC0(xmit->head, xmit->tail, UART_XMIT_SIZE);

	if (ourport->dma && ourport->dma->tx_chan &&
	    count >= ourport->min_dma_size) {
		int align = FUNC1() -
			(xmit->tail & (FUNC1() - 1));
		if (count-align >= ourport->min_dma_size) {
			dma_count = count-align;
			count = align;
		}
	}

	if (port->x_char) {
		FUNC13(port, S3C2410_UTXH, port->x_char);
		port->icount.tx++;
		port->x_char = 0;
		goto out;
	}

	/* if there isn't anything more to transmit, or the uart is now
	 * stopped, disable the uart and exit
	*/

	if (FUNC10(xmit) || FUNC11(port)) {
		FUNC4(port);
		goto out;
	}

	/* try and drain the buffer... */

	if (count > port->fifosize) {
		count = port->fifosize;
		dma_count = 0;
	}

	while (!FUNC10(xmit) && count > 0) {
		if (FUNC2(port, S3C2410_UFSTAT) & ourport->info->tx_fifofull)
			break;

		FUNC13(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;
		count--;
	}

	if (!count && dma_count) {
		FUNC3(ourport, dma_count);
		goto out;
	}

	if (FUNC9(xmit) < WAKEUP_CHARS) {
		FUNC7(&port->lock);
		FUNC12(port);
		FUNC5(&port->lock);
	}

	if (FUNC10(xmit))
		FUNC4(port);

out:
	FUNC8(&port->lock, flags);
	return IRQ_HANDLED;
}