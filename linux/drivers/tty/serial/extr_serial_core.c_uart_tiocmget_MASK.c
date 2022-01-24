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
struct uart_port {int mctrl; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct TYPE_2__ {int (* get_mctrl ) (struct uart_port*) ;} ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 struct uart_port* FUNC6 (struct uart_state*) ; 

__attribute__((used)) static int FUNC7(struct tty_struct *tty)
{
	struct uart_state *state = tty->driver_data;
	struct tty_port *port = &state->port;
	struct uart_port *uport;
	int result = -EIO;

	FUNC0(&port->mutex);
	uport = FUNC6(state);
	if (!uport)
		goto out;

	if (!FUNC5(tty)) {
		result = uport->mctrl;
		FUNC2(&uport->lock);
		result |= uport->ops->get_mctrl(uport);
		FUNC3(&uport->lock);
	}
out:
	FUNC1(&port->mutex);
	return result;
}