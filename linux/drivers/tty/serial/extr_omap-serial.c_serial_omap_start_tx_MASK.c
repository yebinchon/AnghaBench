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
struct TYPE_2__ {int flags; scalar_t__ delay_rts_before_send; } ;
struct uart_port {TYPE_1__ rs485; } ;
struct uart_omap_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  rts_gpio; int /*<<< orphan*/  scr; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_UART_SCR_TX_EMPTY ; 
 int SER_RS485_ENABLED ; 
 int SER_RS485_RTS_ON_SEND ; 
 int SER_RS485_RX_DURING_TX ; 
 int /*<<< orphan*/  UART_OMAP_SCR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_omap_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_omap_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct uart_omap_port* FUNC9 (struct uart_port*) ; 

__attribute__((used)) static void FUNC10(struct uart_port *port)
{
	struct uart_omap_port *up = FUNC9(port);
	int res;

	FUNC3(up->dev);

	/* Handle RS-485 */
	if (port->rs485.flags & SER_RS485_ENABLED) {
		/* Fire THR interrupts when FIFO is below trigger level */
		up->scr &= ~OMAP_UART_SCR_TX_EMPTY;
		FUNC8(up, UART_OMAP_SCR, up->scr);

		/* if rts not already enabled */
		res = (port->rs485.flags & SER_RS485_RTS_ON_SEND) ? 1 : 0;
		if (FUNC0(up->rts_gpio) != res) {
			FUNC1(up->rts_gpio, res);
			if (port->rs485.delay_rts_before_send > 0)
				FUNC2(port->rs485.delay_rts_before_send);
		}
	}

	if ((port->rs485.flags & SER_RS485_ENABLED) &&
	    !(port->rs485.flags & SER_RS485_RX_DURING_TX))
		FUNC7(port);

	FUNC6(up);
	FUNC4(up->dev);
	FUNC5(up->dev);
}