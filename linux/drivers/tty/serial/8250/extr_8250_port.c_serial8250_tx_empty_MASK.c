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
struct uart_8250_port {unsigned int lsr_saved_flags; } ;

/* Variables and functions */
 unsigned int BOTH_EMPTY ; 
 unsigned int LSR_SAVE_FLAGS ; 
 unsigned int TIOCSER_TEMT ; 
 int /*<<< orphan*/  UART_LSR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 unsigned int FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_8250_port* FUNC5 (struct uart_port*) ; 

__attribute__((used)) static unsigned int FUNC6(struct uart_port *port)
{
	struct uart_8250_port *up = FUNC5(port);
	unsigned long flags;
	unsigned int lsr;

	FUNC0(up);

	FUNC3(&port->lock, flags);
	lsr = FUNC2(port, UART_LSR);
	up->lsr_saved_flags |= lsr & LSR_SAVE_FLAGS;
	FUNC4(&port->lock, flags);

	FUNC1(up);

	return (lsr & BOTH_EMPTY) == BOTH_EMPTY ? TIOCSER_TEMT : 0;
}