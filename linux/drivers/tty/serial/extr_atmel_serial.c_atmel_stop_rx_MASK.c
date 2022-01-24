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
 int ATMEL_PDC_RXTDIS ; 
 int /*<<< orphan*/  ATMEL_US_CR ; 
 int ATMEL_US_ENDRX ; 
 int /*<<< orphan*/  ATMEL_US_IDR ; 
 int ATMEL_US_RXDIS ; 
 int ATMEL_US_RXRDY ; 
 int ATMEL_US_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct uart_port*) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	FUNC0(port, ATMEL_US_CR, ATMEL_US_RXDIS);

	if (FUNC1(port)) {
		/* disable PDC receive */
		FUNC0(port, ATMEL_PDC_PTCR, ATMEL_PDC_RXTDIS);
		FUNC0(port, ATMEL_US_IDR,
				  ATMEL_US_ENDRX | ATMEL_US_TIMEOUT |
				  port->read_status_mask);
	} else {
		FUNC0(port, ATMEL_US_IDR, ATMEL_US_RXRDY);
	}
}