#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int flags; } ;
struct uart_port {TYPE_3__* state; TYPE_1__ rs485; } ;
struct TYPE_5__ {scalar_t__ x_char; } ;
struct imx_port {TYPE_2__ port; scalar_t__ dma_is_enabled; } ;
struct TYPE_6__ {int /*<<< orphan*/  xmit; } ;

/* Variables and functions */
 int SER_RS485_ENABLED ; 
 int SER_RS485_RTS_ON_SEND ; 
 int SER_RS485_RX_DURING_TX ; 
 int /*<<< orphan*/  UCR1 ; 
 int UCR1_TRDYEN ; 
 int UCR1_TXDMAEN ; 
 int /*<<< orphan*/  UCR2 ; 
 int /*<<< orphan*/  UCR4 ; 
 int UCR4_TCEN ; 
 int /*<<< orphan*/  FUNC0 (struct imx_port*) ; 
 int FUNC1 (struct imx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct imx_port*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct imx_port*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct imx_port*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port)
{
	struct imx_port *sport = (struct imx_port *)port;
	u32 ucr1;

	if (!sport->port.x_char && FUNC6(&port->state->xmit))
		return;

	if (port->rs485.flags & SER_RS485_ENABLED) {
		u32 ucr2;

		ucr2 = FUNC1(sport, UCR2);
		if (port->rs485.flags & SER_RS485_RTS_ON_SEND)
			FUNC2(sport, &ucr2);
		else
			FUNC3(sport, &ucr2);
		FUNC5(sport, ucr2, UCR2);

		if (!(port->rs485.flags & SER_RS485_RX_DURING_TX))
			FUNC4(port);

		/*
		 * Enable transmitter and shifter empty irq only if DMA is off.
		 * In the DMA case this is done in the tx-callback.
		 */
		if (!sport->dma_is_enabled) {
			u32 ucr4 = FUNC1(sport, UCR4);
			ucr4 |= UCR4_TCEN;
			FUNC5(sport, ucr4, UCR4);
		}
	}

	if (!sport->dma_is_enabled) {
		ucr1 = FUNC1(sport, UCR1);
		FUNC5(sport, ucr1 | UCR1_TRDYEN, UCR1);
	}

	if (sport->dma_is_enabled) {
		if (sport->port.x_char) {
			/* We have X-char to send, so enable TX IRQ and
			 * disable TX DMA to let TX interrupt to send X-char */
			ucr1 = FUNC1(sport, UCR1);
			ucr1 &= ~UCR1_TXDMAEN;
			ucr1 |= UCR1_TRDYEN;
			FUNC5(sport, ucr1, UCR1);
			return;
		}

		if (!FUNC6(&port->state->xmit) &&
		    !FUNC7(port))
			FUNC0(sport);
		return;
	}
}