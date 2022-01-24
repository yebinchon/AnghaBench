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
struct TYPE_2__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; int /*<<< orphan*/  line; int /*<<< orphan*/  dev; } ;
struct uart_omap_port {int /*<<< orphan*/  dev; TYPE_1__ port; scalar_t__ ier; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCM_OUT2 ; 
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_SBC ; 
 int /*<<< orphan*/  UART_LSR ; 
 int UART_LSR_DR ; 
 int /*<<< orphan*/  UART_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct uart_omap_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct uart_omap_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_omap_port*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_omap_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_omap_port* FUNC12 (struct uart_port*) ; 

__attribute__((used)) static void FUNC13(struct uart_port *port)
{
	struct uart_omap_port *up = FUNC12(port);
	unsigned long flags = 0;

	FUNC0(up->port.dev, "serial_omap_shutdown+%d\n", up->port.line);

	FUNC3(up->dev);
	/*
	 * Disable interrupts from this port
	 */
	up->ier = 0;
	FUNC9(up, UART_IER, 0);

	FUNC10(&up->port.lock, flags);
	up->port.mctrl &= ~TIOCM_OUT2;
	FUNC8(&up->port, up->port.mctrl);
	FUNC11(&up->port.lock, flags);

	/*
	 * Disable break condition and FIFOs
	 */
	FUNC9(up, UART_LCR, FUNC6(up, UART_LCR) & ~UART_LCR_SBC);
	FUNC7(up);

	/*
	 * Read data port to reset things, and then free the irq
	 */
	if (FUNC6(up, UART_LSR) & UART_LSR_DR)
		(void) FUNC6(up, UART_RX);

	FUNC4(up->dev);
	FUNC5(up->dev);
	FUNC2(up->port.irq, up);
	FUNC1(up->dev);
}