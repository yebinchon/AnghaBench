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
struct uart_8250_port {struct uart_8250_em485* em485; } ;
struct uart_8250_em485 {int /*<<< orphan*/  start_tx_timer; int /*<<< orphan*/ * active_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 struct uart_8250_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	struct uart_8250_port *up = FUNC3(port);
	struct uart_8250_em485 *em485 = up->em485;

	FUNC1(up);

	if (em485 &&
	    em485->active_timer == &em485->start_tx_timer)
		return;

	if (em485)
		FUNC2(port);
	else
		FUNC0(port);
}