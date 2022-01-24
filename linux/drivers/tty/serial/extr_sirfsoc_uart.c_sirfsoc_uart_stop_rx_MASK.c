#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int dummy; } ;
struct sirfsoc_uart_port {TYPE_1__* uart_reg; int /*<<< orphan*/  is_atlas7; scalar_t__ rx_dma_chan; } ;
struct sirfsoc_register {int /*<<< orphan*/  sirfsoc_int_en_clr_reg; int /*<<< orphan*/  sirfsoc_int_en_reg; int /*<<< orphan*/  sirfsoc_rx_fifo_op; } ;
struct sirfsoc_int_en {int sirfsoc_rx_done_en; } ;
struct TYPE_2__ {int /*<<< orphan*/  uart_type; struct sirfsoc_int_en uart_int_en; struct sirfsoc_register uart_reg; } ;

/* Variables and functions */
 int FUNC0 (struct sirfsoc_int_en*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sirfsoc_int_en*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct sirfsoc_uart_port* FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port)
{
	struct sirfsoc_uart_port *sirfport = FUNC4(port);
	struct sirfsoc_register *ureg = &sirfport->uart_reg->uart_reg;
	struct sirfsoc_int_en *uint_en = &sirfport->uart_reg->uart_int_en;

	FUNC5(port, ureg->sirfsoc_rx_fifo_op, 0);
	if (sirfport->rx_dma_chan) {
		if (!sirfport->is_atlas7)
			FUNC5(port, ureg->sirfsoc_int_en_reg,
				FUNC3(port, ureg->sirfsoc_int_en_reg) &
				~(FUNC0(uint_en,
				sirfport->uart_reg->uart_type) |
				uint_en->sirfsoc_rx_done_en));
		else
			FUNC5(port, ureg->sirfsoc_int_en_clr_reg,
				FUNC0(uint_en,
				sirfport->uart_reg->uart_type)|
				uint_en->sirfsoc_rx_done_en);
		FUNC2(sirfport->rx_dma_chan);
	} else {
		if (!sirfport->is_atlas7)
			FUNC5(port, ureg->sirfsoc_int_en_reg,
				FUNC3(port, ureg->sirfsoc_int_en_reg)&
				~(FUNC1(uint_en,
				sirfport->uart_reg->uart_type)));
		else
			FUNC5(port, ureg->sirfsoc_int_en_clr_reg,
				FUNC1(uint_en,
				sirfport->uart_reg->uart_type));
	}
}