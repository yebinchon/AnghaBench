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
struct atmel_uart_port {int break_active; int /*<<< orphan*/  tasklet_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_US_CR ; 
 int /*<<< orphan*/  ATMEL_US_CSR ; 
 unsigned int ATMEL_US_FRAME ; 
 int /*<<< orphan*/  ATMEL_US_IDR ; 
 int /*<<< orphan*/  ATMEL_US_IER ; 
 unsigned int ATMEL_US_OVRE ; 
 unsigned int ATMEL_US_PARE ; 
 unsigned int ATMEL_US_RSTSTA ; 
 unsigned int ATMEL_US_RXBRK ; 
 unsigned int ATMEL_US_RXRDY ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_uart_port*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (struct uart_port*) ; 
 unsigned int FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 
 struct atmel_uart_port* FUNC5 (struct uart_port*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port)
{
	struct atmel_uart_port *atmel_port = FUNC5(port);
	unsigned int status, ch;

	status = FUNC3(port, ATMEL_US_CSR);
	while (status & ATMEL_US_RXRDY) {
		ch = FUNC2(port);

		/*
		 * note that the error handling code is
		 * out of the main execution path
		 */
		if (FUNC6(status & (ATMEL_US_PARE | ATMEL_US_FRAME
				       | ATMEL_US_OVRE | ATMEL_US_RXBRK)
			     || atmel_port->break_active)) {

			/* clear error */
			FUNC4(port, ATMEL_US_CR, ATMEL_US_RSTSTA);

			if (status & ATMEL_US_RXBRK
			    && !atmel_port->break_active) {
				atmel_port->break_active = 1;
				FUNC4(port, ATMEL_US_IER,
						  ATMEL_US_RXBRK);
			} else {
				/*
				 * This is either the end-of-break
				 * condition or we've received at
				 * least one character without RXBRK
				 * being set. In both cases, the next
				 * RXBRK will indicate start-of-break.
				 */
				FUNC4(port, ATMEL_US_IDR,
						  ATMEL_US_RXBRK);
				status &= ~ATMEL_US_RXBRK;
				atmel_port->break_active = 0;
			}
		}

		FUNC0(port, status, ch);
		status = FUNC3(port, ATMEL_US_CSR);
	}

	FUNC1(atmel_port, &atmel_port->tasklet_rx);
}