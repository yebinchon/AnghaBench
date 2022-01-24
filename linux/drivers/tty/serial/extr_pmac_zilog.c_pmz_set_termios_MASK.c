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
struct uart_port {int /*<<< orphan*/  lock; } ;
struct uart_pmac_port {int dummy; } ;
struct ktermios {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,struct ktermios*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_pmac_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_pmac_port* FUNC5 (struct uart_port*) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port, struct ktermios *termios,
			    struct ktermios *old)
{
	struct uart_pmac_port *uap = FUNC5(port);
	unsigned long flags;

	FUNC3(&port->lock, flags);	

	/* Disable IRQs on the port */
	FUNC2(uap, 0);

	/* Setup new port configuration */
	FUNC1(port, termios, old);

	/* Re-enable IRQs on the port */
	if (FUNC0(uap))
		FUNC2(uap, 1);

	FUNC4(&port->lock, flags);
}