#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct uart_port {int fifosize; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; scalar_t__ membase; } ;

/* Variables and functions */
 int AML_UART_CLEAR_ERR ; 
 scalar_t__ AML_UART_CONTROL ; 
 scalar_t__ AML_UART_MISC ; 
 int FUNC0 (int) ; 
 int AML_UART_RX_EN ; 
 int AML_UART_RX_INT_EN ; 
 int AML_UART_TX_EN ; 
 int AML_UART_TX_INT_EN ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  meson_uart_interrupt ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct uart_port *port)
{
	u32 val;
	int ret = 0;

	val = FUNC2(port->membase + AML_UART_CONTROL);
	val |= AML_UART_CLEAR_ERR;
	FUNC4(val, port->membase + AML_UART_CONTROL);
	val &= ~AML_UART_CLEAR_ERR;
	FUNC4(val, port->membase + AML_UART_CONTROL);

	val |= (AML_UART_RX_EN | AML_UART_TX_EN);
	FUNC4(val, port->membase + AML_UART_CONTROL);

	val |= (AML_UART_RX_INT_EN | AML_UART_TX_INT_EN);
	FUNC4(val, port->membase + AML_UART_CONTROL);

	val = (FUNC0(1) | FUNC1(port->fifosize / 2));
	FUNC4(val, port->membase + AML_UART_MISC);

	ret = FUNC3(port->irq, meson_uart_interrupt, 0,
			  port->name, port);

	return ret;
}