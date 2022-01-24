#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int /*<<< orphan*/  dev; TYPE_2__* state; } ;
struct sirfsoc_uart_port {scalar_t__ tx_dma_state; unsigned long transfer_size; int /*<<< orphan*/  tx_dma_chan; TYPE_3__* tx_dma_desc; int /*<<< orphan*/  tx_dma_addr; int /*<<< orphan*/  is_atlas7; TYPE_1__* uart_reg; struct uart_port port; } ;
struct sirfsoc_register {int /*<<< orphan*/  sirfsoc_tx_fifo_op; int /*<<< orphan*/  sirfsoc_tx_dma_io_ctrl; int /*<<< orphan*/  sirfsoc_int_en_reg; int /*<<< orphan*/  sirfsoc_int_en_clr_reg; } ;
struct sirfsoc_int_en {int sirfsoc_txfifo_empty_en; } ;
struct circ_buf {scalar_t__ tail; scalar_t__ buf; int /*<<< orphan*/  head; } ;
struct TYPE_7__ {void* callback_param; int /*<<< orphan*/  callback; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;
struct TYPE_5__ {struct sirfsoc_int_en uart_int_en; struct sirfsoc_register uart_reg; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int SIRFUART_FIFO_START ; 
 int SIRFUART_FIFO_STOP ; 
 int SIRFUART_IO_MODE ; 
 scalar_t__ TX_DMA_PAUSE ; 
 scalar_t__ TX_DMA_RUNNING ; 
 int /*<<< orphan*/  UART_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int FUNC8 (struct uart_port*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC9 (struct sirfsoc_uart_port*,unsigned long) ; 
 int /*<<< orphan*/  sirfsoc_uart_tx_dma_complete_callback ; 
 scalar_t__ FUNC10 (struct circ_buf*) ; 
 scalar_t__ FUNC11 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct uart_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(struct sirfsoc_uart_port *sirfport)
{
	struct uart_port *port = &sirfport->port;
	struct sirfsoc_register *ureg = &sirfport->uart_reg->uart_reg;
	struct sirfsoc_int_en *uint_en = &sirfport->uart_reg->uart_int_en;
	struct circ_buf *xmit = &port->state->xmit;
	unsigned long tran_size;
	unsigned long tran_start;
	unsigned long pio_tx_size;

	tran_size = FUNC1(xmit->head, xmit->tail, UART_XMIT_SIZE);
	tran_start = (unsigned long)(xmit->buf + xmit->tail);
	if (FUNC10(xmit) || FUNC11(port) ||
			!tran_size)
		return;
	if (sirfport->tx_dma_state == TX_DMA_PAUSE) {
		FUNC6(sirfport->tx_dma_chan);
		return;
	}
	if (sirfport->tx_dma_state == TX_DMA_RUNNING)
		return;
	if (!sirfport->is_atlas7)
		FUNC12(port, ureg->sirfsoc_int_en_reg,
				FUNC8(port, ureg->sirfsoc_int_en_reg)&
				~(uint_en->sirfsoc_txfifo_empty_en));
	else
		FUNC12(port, ureg->sirfsoc_int_en_clr_reg,
				uint_en->sirfsoc_txfifo_empty_en);
	/*
	 * DMA requires buffer address and buffer length are both aligned with
	 * 4 bytes, so we use PIO for
	 * 1. if address is not aligned with 4bytes, use PIO for the first 1~3
	 * bytes, and move to DMA for the left part aligned with 4bytes
	 * 2. if buffer length is not aligned with 4bytes, use DMA for aligned
	 * part first, move to PIO for the left 1~3 bytes
	 */
	if (tran_size < 4 || FUNC0(tran_start)) {
		FUNC12(port, ureg->sirfsoc_tx_fifo_op, SIRFUART_FIFO_STOP);
		FUNC12(port, ureg->sirfsoc_tx_dma_io_ctrl,
			FUNC8(port, ureg->sirfsoc_tx_dma_io_ctrl)|
			SIRFUART_IO_MODE);
		if (FUNC0(tran_start)) {
			pio_tx_size = FUNC9(sirfport,
				FUNC0(tran_start));
			tran_size -= pio_tx_size;
		}
		if (tran_size < 4)
			FUNC9(sirfport, tran_size);
		if (!sirfport->is_atlas7)
			FUNC12(port, ureg->sirfsoc_int_en_reg,
				FUNC8(port, ureg->sirfsoc_int_en_reg)|
				uint_en->sirfsoc_txfifo_empty_en);
		else
			FUNC12(port, ureg->sirfsoc_int_en_reg,
				uint_en->sirfsoc_txfifo_empty_en);
		FUNC12(port, ureg->sirfsoc_tx_fifo_op, SIRFUART_FIFO_START);
	} else {
		/* tx transfer mode switch into dma mode */
		FUNC12(port, ureg->sirfsoc_tx_fifo_op, SIRFUART_FIFO_STOP);
		FUNC12(port, ureg->sirfsoc_tx_dma_io_ctrl,
			FUNC8(port, ureg->sirfsoc_tx_dma_io_ctrl)&
			~SIRFUART_IO_MODE);
		FUNC12(port, ureg->sirfsoc_tx_fifo_op, SIRFUART_FIFO_START);
		tran_size &= ~(0x3);

		sirfport->tx_dma_addr = FUNC4(port->dev,
			xmit->buf + xmit->tail,
			tran_size, DMA_TO_DEVICE);
		sirfport->tx_dma_desc = FUNC5(
			sirfport->tx_dma_chan, sirfport->tx_dma_addr,
			tran_size, DMA_MEM_TO_DEV, DMA_PREP_INTERRUPT);
		if (!sirfport->tx_dma_desc) {
			FUNC2(port->dev, "DMA prep slave single fail\n");
			return;
		}
		sirfport->tx_dma_desc->callback =
			sirfsoc_uart_tx_dma_complete_callback;
		sirfport->tx_dma_desc->callback_param = (void *)sirfport;
		sirfport->transfer_size = tran_size;

		FUNC7(sirfport->tx_dma_desc);
		FUNC3(sirfport->tx_dma_chan);
		sirfport->tx_dma_state = TX_DMA_RUNNING;
	}
}