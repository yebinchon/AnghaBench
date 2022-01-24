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
struct uart_port {int /*<<< orphan*/  lock; scalar_t__ membase; } ;

/* Variables and functions */
 scalar_t__ CDNS_UART_CR ; 
 unsigned int CDNS_UART_CR_STARTBRK ; 
 unsigned int CDNS_UART_CR_STOPBRK ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, int ctl)
{
	unsigned int status;
	unsigned long flags;

	FUNC1(&port->lock, flags);

	status = FUNC0(port->membase + CDNS_UART_CR);

	if (ctl == -1)
		FUNC3(CDNS_UART_CR_STARTBRK | status,
				port->membase + CDNS_UART_CR);
	else {
		if ((status & CDNS_UART_CR_STOPBRK) == 0)
			FUNC3(CDNS_UART_CR_STOPBRK | status,
					port->membase + CDNS_UART_CR);
	}
	FUNC2(&port->lock, flags);
}