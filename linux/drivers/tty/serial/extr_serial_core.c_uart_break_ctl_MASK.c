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
struct tty_port {int /*<<< orphan*/  mutex; } ;
struct uart_state {struct tty_port port; } ;
struct uart_port {scalar_t__ type; TYPE_1__* ops; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* break_ctl ) (struct uart_port*,int) ;} ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ PORT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int) ; 
 struct uart_port* FUNC3 (struct uart_state*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty, int break_state)
{
	struct uart_state *state = tty->driver_data;
	struct tty_port *port = &state->port;
	struct uart_port *uport;
	int ret = -EIO;

	FUNC0(&port->mutex);
	uport = FUNC3(state);
	if (!uport)
		goto out;

	if (uport->type != PORT_UNKNOWN)
		uport->ops->break_ctl(uport, break_state);
	ret = 0;
out:
	FUNC1(&port->mutex);
	return ret;
}