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
struct uart_port {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {scalar_t__ tail; scalar_t__ head; } ;
struct atmel_uart_port {TYPE_1__ rx_ring; int /*<<< orphan*/  (* release_tx ) (struct uart_port*) ;int /*<<< orphan*/  (* release_rx ) (struct uart_port*) ;int /*<<< orphan*/  tasklet_tx; int /*<<< orphan*/  tasklet_rx; int /*<<< orphan*/  uart_timer; int /*<<< orphan*/  tasklet_shutdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_US_CR ; 
 int /*<<< orphan*/  ATMEL_US_IDR ; 
 int ATMEL_US_RSTSTA ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct atmel_uart_port* FUNC12 (struct uart_port*) ; 

__attribute__((used)) static void FUNC13(struct uart_port *port)
{
	struct atmel_uart_port *atmel_port = FUNC12(port);

	/* Disable modem control lines interrupts */
	FUNC0(port);

	/* Disable interrupts at device level */
	FUNC4(port, ATMEL_US_IDR, -1);

	/* Prevent spurious interrupts from scheduling the tasklet */
	FUNC5(&atmel_port->tasklet_shutdown);

	/*
	 * Prevent any tasklets being scheduled during
	 * cleanup
	 */
	FUNC6(&atmel_port->uart_timer);

	/* Make sure that no interrupt is on the fly */
	FUNC10(port->irq);

	/*
	 * Clear out any scheduled tasklets before
	 * we destroy the buffers
	 */
	FUNC11(&atmel_port->tasklet_rx);
	FUNC11(&atmel_port->tasklet_tx);

	/*
	 * Ensure everything is stopped and
	 * disable port and break condition.
	 */
	FUNC2(port);
	FUNC3(port);

	FUNC4(port, ATMEL_US_CR, ATMEL_US_RSTSTA);

	/*
	 * Shut-down the DMA.
	 */
	if (atmel_port->release_rx)
		atmel_port->release_rx(port);
	if (atmel_port->release_tx)
		atmel_port->release_tx(port);

	/*
	 * Reset ring buffer pointers
	 */
	atmel_port->rx_ring.head = 0;
	atmel_port->rx_ring.tail = 0;

	/*
	 * Free the interrupts
	 */
	FUNC7(port->irq, port);

	FUNC1(port);
}