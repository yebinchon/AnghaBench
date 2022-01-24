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
struct uart_port {int dummy; } ;
struct atmel_uart_port {unsigned int pending; unsigned int pending_status; int /*<<< orphan*/  lock_suspended; scalar_t__ suspended; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_ISR_PASS_LIMIT ; 
 int /*<<< orphan*/  ATMEL_US_CSR ; 
 int /*<<< orphan*/  ATMEL_US_IDR ; 
 int /*<<< orphan*/  ATMEL_US_IMR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,unsigned int) ; 
 unsigned int FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct atmel_uart_port* FUNC8 (struct uart_port*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	struct atmel_uart_port *atmel_port = FUNC8(port);
	unsigned int status, pending, mask, pass_counter = 0;

	FUNC6(&atmel_port->lock_suspended);

	do {
		status = FUNC3(port, ATMEL_US_CSR);
		mask = FUNC3(port, ATMEL_US_IMR);
		pending = status & mask;
		if (!pending)
			break;

		if (atmel_port->suspended) {
			atmel_port->pending |= pending;
			atmel_port->pending_status = status;
			FUNC4(port, ATMEL_US_IDR, mask);
			FUNC5();
			break;
		}

		FUNC0(port, pending);
		FUNC1(port, pending, status);
		FUNC2(port, pending);
	} while (pass_counter++ < ATMEL_ISR_PASS_LIMIT);

	FUNC7(&atmel_port->lock_suspended);

	return pass_counter ? IRQ_HANDLED : IRQ_NONE;
}