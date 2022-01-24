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
struct uart_port {int fifosize; int /*<<< orphan*/  membase; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int LPC32XX_HSU_BRK_INT ; 
 int LPC32XX_HSU_FE_INT ; 
 int FUNC3 (int) ; 
 int LPC32XX_HSU_RX_OE_INT ; 
 int LPC32XX_HSU_RX_TL32B ; 
 int LPC32XX_HSU_TMO_INACT_4B ; 
 int LPC32XX_HSU_TX_INT ; 
 int LPC32XX_HSU_TX_TL8B ; 
 int /*<<< orphan*/  PORT_UART00 ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 
 int FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port, int uflags)
{
	int ret;

	ret = FUNC5(port);
	if (ret < 0)
		return;
	port->type = PORT_UART00;
	port->fifosize = 64;

	FUNC4(port);

	FUNC6((LPC32XX_HSU_TX_INT | LPC32XX_HSU_FE_INT |
		LPC32XX_HSU_BRK_INT | LPC32XX_HSU_RX_OE_INT),
	       FUNC1(port->membase));

	FUNC6(0xFF, FUNC2(port->membase));

	/* Set receiver timeout, HSU offset of 20, no break, no interrupts,
	   and default FIFO trigger levels */
	FUNC6(LPC32XX_HSU_TX_TL8B | LPC32XX_HSU_RX_TL32B |
	       FUNC3(20) | LPC32XX_HSU_TMO_INACT_4B,
	       FUNC0(port->membase));
}