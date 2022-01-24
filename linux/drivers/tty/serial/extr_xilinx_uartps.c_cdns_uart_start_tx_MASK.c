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
struct uart_port {scalar_t__ membase; TYPE_1__* state; } ;
struct TYPE_2__ {int /*<<< orphan*/  xmit; } ;

/* Variables and functions */
 scalar_t__ CDNS_UART_CR ; 
 unsigned int CDNS_UART_CR_TX_DIS ; 
 unsigned int CDNS_UART_CR_TX_EN ; 
 scalar_t__ CDNS_UART_IER ; 
 scalar_t__ CDNS_UART_ISR ; 
 unsigned int CDNS_UART_IXR_TXEMPTY ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	unsigned int status;

	if (FUNC3(port))
		return;

	/*
	 * Set the TX enable bit and clear the TX disable bit to enable the
	 * transmitter.
	 */
	status = FUNC1(port->membase + CDNS_UART_CR);
	status &= ~CDNS_UART_CR_TX_DIS;
	status |= CDNS_UART_CR_TX_EN;
	FUNC4(status, port->membase + CDNS_UART_CR);

	if (FUNC2(&port->state->xmit))
		return;

	FUNC0(port);

	FUNC4(CDNS_UART_IXR_TXEMPTY, port->membase + CDNS_UART_ISR);
	/* Enable the TX Empty interrupt */
	FUNC4(CDNS_UART_IXR_TXEMPTY, port->membase + CDNS_UART_IER);
}