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
struct uart_port {int /*<<< orphan*/  irq; } ;
struct circ_buf {int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;
struct sirfsoc_uart_port {int is_hrt_enabled; int pio_fetch_cnt; int /*<<< orphan*/  hrt; scalar_t__ rx_dma_chan; int /*<<< orphan*/  tx_dma_state; scalar_t__ tx_dma_chan; int /*<<< orphan*/  cts_gpio; int /*<<< orphan*/  rts_gpio; scalar_t__ hw_flow_ctrl; TYPE_2__* uart_reg; scalar_t__ ms_enabled; int /*<<< orphan*/  is_atlas7; TYPE_1__ rx_dma_items; } ;
struct sirfsoc_register {int /*<<< orphan*/  sirfsoc_rx_fifo_status; int /*<<< orphan*/  sirfsoc_int_en_clr_reg; int /*<<< orphan*/  sirfsoc_int_en_reg; } ;
struct TYPE_4__ {scalar_t__ uart_type; struct sirfsoc_register uart_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIRFSOC_RX_DMA_BUF_SIZE ; 
 int SIRFUART_RX_FIFO_MASK ; 
 scalar_t__ SIRF_USP_UART ; 
 int /*<<< orphan*/  TX_DMA_IDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sirfsoc_uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 
 struct sirfsoc_uart_port* FUNC7 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct uart_port *port)
{
	struct sirfsoc_uart_port *sirfport = FUNC7(port);
	struct sirfsoc_register *ureg = &sirfport->uart_reg->uart_reg;
	struct circ_buf *xmit;

	xmit = &sirfport->rx_dma_items.xmit;
	if (!sirfport->is_atlas7)
		FUNC8(port, ureg->sirfsoc_int_en_reg, 0);
	else
		FUNC8(port, ureg->sirfsoc_int_en_clr_reg, ~0UL);

	FUNC1(port->irq, sirfport);
	if (sirfport->ms_enabled)
		FUNC6(port);
	if (sirfport->uart_reg->uart_type == SIRF_USP_UART &&
			sirfport->hw_flow_ctrl) {
		FUNC2(sirfport->rts_gpio, 1);
		FUNC1(FUNC3(sirfport->cts_gpio), sirfport);
	}
	if (sirfport->tx_dma_chan)
		sirfport->tx_dma_state = TX_DMA_IDLE;
	if (sirfport->rx_dma_chan && sirfport->is_hrt_enabled) {
		while (((FUNC5(port, ureg->sirfsoc_rx_fifo_status) &
			SIRFUART_RX_FIFO_MASK) > sirfport->pio_fetch_cnt) &&
			!FUNC0(xmit->head, xmit->tail,
			SIRFSOC_RX_DMA_BUF_SIZE))
			;
		sirfport->is_hrt_enabled = false;
		FUNC4(&sirfport->hrt);
	}
}