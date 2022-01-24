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
struct uart_port {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 unsigned int UART_CTRL_RE ; 
 unsigned int UART_CTRL_RI ; 
 unsigned int UART_CTRL_TE ; 
 unsigned int UART_CTRL_TI ; 
 unsigned int FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  apbuart_int ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct uart_port*) ; 

__attribute__((used)) static int FUNC3(struct uart_port *port)
{
	int retval;
	unsigned int cr;

	/* Allocate the IRQ */
	retval = FUNC2(port->irq, apbuart_int, 0, "apbuart", port);
	if (retval)
		return retval;

	/* Finally, enable interrupts */
	cr = FUNC0(port);
	FUNC1(port,
		      cr | UART_CTRL_RE | UART_CTRL_TE |
		      UART_CTRL_RI | UART_CTRL_TI);

	return 0;
}