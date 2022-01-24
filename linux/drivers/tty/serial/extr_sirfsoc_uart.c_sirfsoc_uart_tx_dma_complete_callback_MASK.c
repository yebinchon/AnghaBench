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
struct uart_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; TYPE_2__ icount; TYPE_1__* state; } ;
struct sirfsoc_uart_port {int transfer_size; int /*<<< orphan*/  tx_dma_state; scalar_t__ tx_dma_addr; struct uart_port port; } ;
struct circ_buf {int tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  TX_DMA_IDLE ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sirfsoc_uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*) ; 

__attribute__((used)) static void FUNC6(void *param)
{
	struct sirfsoc_uart_port *sirfport = (struct sirfsoc_uart_port *)param;
	struct uart_port *port = &sirfport->port;
	struct circ_buf *xmit = &port->state->xmit;
	unsigned long flags;

	FUNC2(&port->lock, flags);
	xmit->tail = (xmit->tail + sirfport->transfer_size) &
				(UART_XMIT_SIZE - 1);
	port->icount.tx += sirfport->transfer_size;
	if (FUNC4(xmit) < WAKEUP_CHARS)
		FUNC5(port);
	if (sirfport->tx_dma_addr)
		FUNC0(port->dev, sirfport->tx_dma_addr,
				sirfport->transfer_size, DMA_TO_DEVICE);
	sirfport->tx_dma_state = TX_DMA_IDLE;
	FUNC1(sirfport);
	FUNC3(&port->lock, flags);
}