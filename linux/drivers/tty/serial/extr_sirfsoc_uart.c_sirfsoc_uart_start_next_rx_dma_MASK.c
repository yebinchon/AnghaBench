#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {scalar_t__ head; scalar_t__ tail; } ;
struct TYPE_8__ {TYPE_4__* desc; int /*<<< orphan*/  cookie; int /*<<< orphan*/  dma_addr; TYPE_1__ xmit; } ;
struct sirfsoc_uart_port {TYPE_3__* uart_reg; int /*<<< orphan*/  is_atlas7; int /*<<< orphan*/  rx_dma_chan; TYPE_2__ rx_dma_items; } ;
struct sirfsoc_register {int /*<<< orphan*/  sirfsoc_int_en_reg; int /*<<< orphan*/  sirfsoc_rx_dma_io_ctrl; } ;
struct sirfsoc_int_en {int dummy; } ;
struct TYPE_10__ {struct sirfsoc_uart_port* callback_param; int /*<<< orphan*/  callback; } ;
struct TYPE_9__ {int /*<<< orphan*/  uart_type; struct sirfsoc_int_en uart_int_en; struct sirfsoc_register uart_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int SIRFSOC_RX_DMA_BUF_SIZE ; 
 int SIRFUART_IO_MODE ; 
 int FUNC1 (struct sirfsoc_int_en*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int FUNC6 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sirfsoc_uart_rx_dma_complete_callback ; 
 struct sirfsoc_uart_port* FUNC7 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct uart_port *port)
{
	struct sirfsoc_uart_port *sirfport = FUNC7(port);
	struct sirfsoc_register *ureg = &sirfport->uart_reg->uart_reg;
	struct sirfsoc_int_en *uint_en = &sirfport->uart_reg->uart_int_en;
	FUNC8(port, ureg->sirfsoc_rx_dma_io_ctrl,
		FUNC6(port, ureg->sirfsoc_rx_dma_io_ctrl) &
		~SIRFUART_IO_MODE);
	sirfport->rx_dma_items.xmit.tail =
		sirfport->rx_dma_items.xmit.head = 0;
	sirfport->rx_dma_items.desc =
		FUNC4(sirfport->rx_dma_chan,
		sirfport->rx_dma_items.dma_addr, SIRFSOC_RX_DMA_BUF_SIZE,
		SIRFSOC_RX_DMA_BUF_SIZE / 2,
		DMA_DEV_TO_MEM, DMA_PREP_INTERRUPT);
	if (FUNC0(sirfport->rx_dma_items.desc)) {
		FUNC2(port->dev, "DMA slave single fail\n");
		return;
	}
	sirfport->rx_dma_items.desc->callback =
		sirfsoc_uart_rx_dma_complete_callback;
	sirfport->rx_dma_items.desc->callback_param = sirfport;
	sirfport->rx_dma_items.cookie =
		FUNC5(sirfport->rx_dma_items.desc);
	FUNC3(sirfport->rx_dma_chan);
	if (!sirfport->is_atlas7)
		FUNC8(port, ureg->sirfsoc_int_en_reg,
				FUNC6(port, ureg->sirfsoc_int_en_reg) |
				FUNC1(uint_en,
				sirfport->uart_reg->uart_type));
	else
		FUNC8(port, ureg->sirfsoc_int_en_reg,
				FUNC1(uint_en,
				sirfport->uart_reg->uart_type));
}