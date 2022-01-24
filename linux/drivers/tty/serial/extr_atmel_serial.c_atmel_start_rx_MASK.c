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
struct uart_port {int read_status_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_PDC_PTCR ; 
 int ATMEL_PDC_RXTEN ; 
 int /*<<< orphan*/  ATMEL_US_CR ; 
 int ATMEL_US_ENDRX ; 
 int /*<<< orphan*/  ATMEL_US_IER ; 
 int ATMEL_US_RSTSTA ; 
 int ATMEL_US_RXEN ; 
 int ATMEL_US_RXRDY ; 
 int ATMEL_US_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct uart_port*) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	/* reset status and receiver */
	FUNC0(port, ATMEL_US_CR, ATMEL_US_RSTSTA);

	FUNC0(port, ATMEL_US_CR, ATMEL_US_RXEN);

	if (FUNC1(port)) {
		/* enable PDC controller */
		FUNC0(port, ATMEL_US_IER,
				  ATMEL_US_ENDRX | ATMEL_US_TIMEOUT |
				  port->read_status_mask);
		FUNC0(port, ATMEL_PDC_PTCR, ATMEL_PDC_RXTEN);
	} else {
		FUNC0(port, ATMEL_US_IER, ATMEL_US_RXRDY);
	}
}