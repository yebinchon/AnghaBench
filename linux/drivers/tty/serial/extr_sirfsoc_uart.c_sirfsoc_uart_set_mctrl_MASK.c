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
struct sirfsoc_uart_port {int /*<<< orphan*/  rts_gpio; TYPE_1__* uart_reg; int /*<<< orphan*/  ms_enabled; int /*<<< orphan*/  hw_flow_ctrl; } ;
struct sirfsoc_register {int /*<<< orphan*/  sirfsoc_afc_ctrl; int /*<<< orphan*/  sirfsoc_mode1; int /*<<< orphan*/  sirfsoc_line_ctrl; } ;
struct TYPE_2__ {scalar_t__ uart_type; struct sirfsoc_register uart_reg; } ;

/* Variables and functions */
 unsigned int SIRFSOC_USP_LOOP_BACK_CTRL ; 
 int SIRFUART_AFC_CTRL_RX_THD ; 
 unsigned int SIRFUART_LOOP_BACK ; 
 scalar_t__ SIRF_REAL_UART ; 
 unsigned int TIOCM_LOOP ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct sirfsoc_uart_port* FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, unsigned int mctrl)
{
	struct sirfsoc_uart_port *sirfport = FUNC2(port);
	struct sirfsoc_register *ureg = &sirfport->uart_reg->uart_reg;
	unsigned int assert = mctrl & TIOCM_RTS;
	unsigned int val = assert ? SIRFUART_AFC_CTRL_RX_THD : 0x0;
	unsigned int current_val;

	if (mctrl & TIOCM_LOOP) {
		if (sirfport->uart_reg->uart_type == SIRF_REAL_UART)
			FUNC3(port, ureg->sirfsoc_line_ctrl,
				FUNC1(port, ureg->sirfsoc_line_ctrl) |
				SIRFUART_LOOP_BACK);
		else
			FUNC3(port, ureg->sirfsoc_mode1,
				FUNC1(port, ureg->sirfsoc_mode1) |
				SIRFSOC_USP_LOOP_BACK_CTRL);
	} else {
		if (sirfport->uart_reg->uart_type == SIRF_REAL_UART)
			FUNC3(port, ureg->sirfsoc_line_ctrl,
				FUNC1(port, ureg->sirfsoc_line_ctrl) &
				~SIRFUART_LOOP_BACK);
		else
			FUNC3(port, ureg->sirfsoc_mode1,
				FUNC1(port, ureg->sirfsoc_mode1) &
				~SIRFSOC_USP_LOOP_BACK_CTRL);
	}

	if (!sirfport->hw_flow_ctrl || !sirfport->ms_enabled)
		return;
	if (sirfport->uart_reg->uart_type == SIRF_REAL_UART) {
		current_val = FUNC1(port, ureg->sirfsoc_afc_ctrl) & ~0xFF;
		val |= current_val;
		FUNC3(port, ureg->sirfsoc_afc_ctrl, val);
	} else {
		if (!val)
			FUNC0(sirfport->rts_gpio, 1);
		else
			FUNC0(sirfport->rts_gpio, 0);
	}
}