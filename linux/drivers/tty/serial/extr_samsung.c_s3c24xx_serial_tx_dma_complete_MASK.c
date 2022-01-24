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
struct uart_port {int /*<<< orphan*/  lock; TYPE_2__ icount; int /*<<< orphan*/  dev; TYPE_1__* state; } ;
struct s3c24xx_uart_port {scalar_t__ tx_in_progress; struct uart_port port; struct s3c24xx_uart_dma* dma; } ;
struct s3c24xx_uart_dma {int tx_bytes_requested; int /*<<< orphan*/  tx_size; int /*<<< orphan*/  tx_transfer_addr; int /*<<< orphan*/  tx_desc; int /*<<< orphan*/  tx_cookie; int /*<<< orphan*/  tx_chan; } ;
struct dma_tx_state {int residue; } ;
struct circ_buf {int tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c24xx_uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*) ; 

__attribute__((used)) static void FUNC8(void *args)
{
	struct s3c24xx_uart_port *ourport = args;
	struct uart_port *port = &ourport->port;
	struct circ_buf *xmit = &port->state->xmit;
	struct s3c24xx_uart_dma *dma = ourport->dma;
	struct dma_tx_state state;
	unsigned long flags;
	int count;


	FUNC2(dma->tx_chan, dma->tx_cookie, &state);
	count = dma->tx_bytes_requested - state.residue;
	FUNC0(dma->tx_desc);

	FUNC1(ourport->port.dev, dma->tx_transfer_addr,
				dma->tx_size, DMA_TO_DEVICE);

	FUNC4(&port->lock, flags);

	xmit->tail = (xmit->tail + count) & (UART_XMIT_SIZE - 1);
	port->icount.tx += count;
	ourport->tx_in_progress = 0;

	if (FUNC6(xmit) < WAKEUP_CHARS)
		FUNC7(port);

	FUNC3(ourport);
	FUNC5(&port->lock, flags);
}