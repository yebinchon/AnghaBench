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
struct uart_port {int /*<<< orphan*/  membase; int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; int /*<<< orphan*/  mapbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int LPC32XX_HSU_BRK_INT ; 
 int LPC32XX_HSU_ERR_INT_EN ; 
 int LPC32XX_HSU_FE_INT ; 
 int FUNC3 (int) ; 
 int LPC32XX_HSU_RX_INT_EN ; 
 int LPC32XX_HSU_RX_OE_INT ; 
 int LPC32XX_HSU_RX_TL32B ; 
 int LPC32XX_HSU_TMO_INACT_4B ; 
 int LPC32XX_HSU_TX_INT ; 
 int LPC32XX_HSU_TX_TL8B ; 
 int /*<<< orphan*/  MODNAME ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  serial_lpc32xx_interrupt ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct uart_port *port)
{
	int retval;
	unsigned long flags;
	u32 tmp;

	FUNC7(&port->lock, flags);

	FUNC4(port);

	FUNC9((LPC32XX_HSU_TX_INT | LPC32XX_HSU_FE_INT |
		LPC32XX_HSU_BRK_INT | LPC32XX_HSU_RX_OE_INT),
	       FUNC1(port->membase));

	FUNC9(0xFF, FUNC2(port->membase));

	/*
	 * Set receiver timeout, HSU offset of 20, no break, no interrupts,
	 * and default FIFO trigger levels
	 */
	tmp = LPC32XX_HSU_TX_TL8B | LPC32XX_HSU_RX_TL32B |
		FUNC3(20) | LPC32XX_HSU_TMO_INACT_4B;
	FUNC9(tmp, FUNC0(port->membase));

	FUNC5(port->mapbase, 0); /* get out of loopback mode */

	FUNC8(&port->lock, flags);

	retval = FUNC6(port->irq, serial_lpc32xx_interrupt,
			     0, MODNAME, port);
	if (!retval)
		FUNC9((tmp | LPC32XX_HSU_RX_INT_EN | LPC32XX_HSU_ERR_INT_EN),
		       FUNC0(port->membase));

	return retval;
}