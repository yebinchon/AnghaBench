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
struct uart_port {TYPE_2__* state; } ;
struct s3c24xx_uart_port {unsigned long min_dma_size; TYPE_1__* dma; struct uart_port port; } ;
struct circ_buf {int tail; int /*<<< orphan*/  head; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_chan; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UART_XMIT_SIZE ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct s3c24xx_uart_port*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c24xx_uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 

__attribute__((used)) static void FUNC5(struct s3c24xx_uart_port *ourport)
{
	struct uart_port *port = &ourport->port;
	struct circ_buf *xmit = &port->state->xmit;
	unsigned long count;

	/* Get data size up to the end of buffer */
	count = FUNC0(xmit->head, xmit->tail, UART_XMIT_SIZE);

	if (!count) {
		FUNC4(port);
		return;
	}

	if (!ourport->dma || !ourport->dma->tx_chan ||
	    count < ourport->min_dma_size ||
	    xmit->tail & (FUNC1() - 1))
		FUNC3(ourport);
	else
		FUNC2(ourport, count);
}