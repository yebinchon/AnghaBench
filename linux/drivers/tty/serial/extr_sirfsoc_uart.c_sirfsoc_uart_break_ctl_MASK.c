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
struct sirfsoc_uart_port {TYPE_1__* uart_reg; } ;
struct sirfsoc_register {int /*<<< orphan*/  sirfsoc_line_ctrl; } ;
struct TYPE_2__ {scalar_t__ uart_type; struct sirfsoc_register uart_reg; } ;

/* Variables and functions */
 unsigned long SIRFUART_SET_BREAK ; 
 scalar_t__ SIRF_REAL_UART ; 
 unsigned long FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct sirfsoc_uart_port* FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port, int break_state)
{
	struct sirfsoc_uart_port *sirfport = FUNC1(port);
	struct sirfsoc_register *ureg = &sirfport->uart_reg->uart_reg;
	if (sirfport->uart_reg->uart_type == SIRF_REAL_UART) {
		unsigned long ulcon = FUNC0(port, ureg->sirfsoc_line_ctrl);
		if (break_state)
			ulcon |= SIRFUART_SET_BREAK;
		else
			ulcon &= ~SIRFUART_SET_BREAK;
		FUNC2(port, ureg->sirfsoc_line_ctrl, ulcon);
	}
}