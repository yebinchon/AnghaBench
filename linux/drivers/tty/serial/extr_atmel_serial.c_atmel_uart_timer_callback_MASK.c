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
struct timer_list {int dummy; } ;
struct atmel_uart_port {int /*<<< orphan*/  uart_timer; int /*<<< orphan*/  tasklet_rx; int /*<<< orphan*/  tasklet_shutdown; struct uart_port uart; } ;

/* Variables and functions */
 struct atmel_uart_port* atmel_port ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct atmel_uart_port* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  uart_timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct atmel_uart_port *atmel_port = FUNC1(atmel_port, t,
							uart_timer);
	struct uart_port *port = &atmel_port->uart;

	if (!FUNC0(&atmel_port->tasklet_shutdown)) {
		FUNC3(&atmel_port->tasklet_rx);
		FUNC2(&atmel_port->uart_timer,
			  jiffies + FUNC4(port));
	}
}