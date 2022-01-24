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
struct atmel_uart_port {int /*<<< orphan*/  (* schedule_rx ) (struct uart_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 struct atmel_uart_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct uart_port *port = (struct uart_port *)data;
	struct atmel_uart_port *atmel_port = FUNC3(port);

	/* The interrupt handler does not take the lock */
	FUNC0(&port->lock);
	atmel_port->schedule_rx(port);
	FUNC1(&port->lock);
}