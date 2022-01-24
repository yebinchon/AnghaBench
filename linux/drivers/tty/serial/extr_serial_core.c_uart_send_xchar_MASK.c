#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uart_state {int dummy; } ;
struct uart_port {char x_char; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* start_tx ) (struct uart_port*) ;int /*<<< orphan*/  (* send_xchar ) (struct uart_port*,char) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 
 struct uart_port* FUNC5 (struct uart_state*) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty, char ch)
{
	struct uart_state *state = tty->driver_data;
	struct uart_port *port;
	unsigned long flags;

	port = FUNC5(state);
	if (!port)
		return;

	if (port->ops->send_xchar)
		port->ops->send_xchar(port, ch);
	else {
		FUNC0(&port->lock, flags);
		port->x_char = ch;
		if (ch)
			port->ops->start_tx(port);
		FUNC1(&port->lock, flags);
	}
	FUNC4(port);
}