#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int /*<<< orphan*/  dev; TYPE_1__* state; } ;
struct s3c24xx_uart_port {scalar_t__ tx_mode; scalar_t__ tx_in_progress; struct uart_port port; struct s3c24xx_uart_dma* dma; } ;
struct s3c24xx_uart_dma {unsigned int tx_size; unsigned int tx_bytes_requested; int /*<<< orphan*/  tx_chan; TYPE_2__* tx_desc; int /*<<< orphan*/  tx_cookie; scalar_t__ tx_transfer_addr; scalar_t__ tx_addr; } ;
struct circ_buf {scalar_t__ tail; } ;
struct TYPE_5__ {struct s3c24xx_uart_port* callback_param; int /*<<< orphan*/  callback; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EIO ; 
 scalar_t__ S3C24XX_TX_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct s3c24xx_uart_port*) ; 
 int /*<<< orphan*/  s3c24xx_serial_tx_dma_complete ; 

__attribute__((used)) static int FUNC7(struct s3c24xx_uart_port *ourport,
				      unsigned int count)
{
	struct uart_port *port = &ourport->port;
	struct circ_buf *xmit = &port->state->xmit;
	struct s3c24xx_uart_dma *dma = ourport->dma;


	if (ourport->tx_mode != S3C24XX_TX_DMA)
		FUNC6(ourport);

	dma->tx_size = count & ~(FUNC2() - 1);
	dma->tx_transfer_addr = dma->tx_addr + xmit->tail;

	FUNC3(ourport->port.dev, dma->tx_transfer_addr,
				dma->tx_size, DMA_TO_DEVICE);

	dma->tx_desc = FUNC4(dma->tx_chan,
				dma->tx_transfer_addr, dma->tx_size,
				DMA_MEM_TO_DEV, DMA_PREP_INTERRUPT);
	if (!dma->tx_desc) {
		FUNC0(ourport->port.dev, "Unable to get desc for Tx\n");
		return -EIO;
	}

	dma->tx_desc->callback = s3c24xx_serial_tx_dma_complete;
	dma->tx_desc->callback_param = ourport;
	dma->tx_bytes_requested = dma->tx_size;

	ourport->tx_in_progress = S3C24XX_TX_DMA;
	dma->tx_cookie = FUNC5(dma->tx_desc);
	FUNC1(dma->tx_chan);
	return 0;
}