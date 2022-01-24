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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; int /*<<< orphan*/  irq; } ;
struct uart_pxa_port {TYPE_1__ port; scalar_t__ ier; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCM_OUT2 ; 
 int /*<<< orphan*/  UART_FCR ; 
 int UART_FCR_CLEAR_RCVR ; 
 int UART_FCR_CLEAR_XMIT ; 
 int UART_FCR_ENABLE_FIFO ; 
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_SBC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct uart_pxa_port*) ; 
 int FUNC1 (struct uart_pxa_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_pxa_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port)
{
	struct uart_pxa_port *up = (struct uart_pxa_port *)port;
	unsigned long flags;

	FUNC0(up->port.irq, up);

	/*
	 * Disable interrupts from this port
	 */
	up->ier = 0;
	FUNC2(up, UART_IER, 0);

	FUNC4(&up->port.lock, flags);
	up->port.mctrl &= ~TIOCM_OUT2;
	FUNC3(&up->port, up->port.mctrl);
	FUNC5(&up->port.lock, flags);

	/*
	 * Disable break condition and FIFOs
	 */
	FUNC2(up, UART_LCR, FUNC1(up, UART_LCR) & ~UART_LCR_SBC);
	FUNC2(up, UART_FCR, UART_FCR_ENABLE_FIFO |
				  UART_FCR_CLEAR_RCVR |
				  UART_FCR_CLEAR_XMIT);
	FUNC2(up, UART_FCR, 0);
}