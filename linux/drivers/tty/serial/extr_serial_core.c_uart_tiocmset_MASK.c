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
struct tty_port {int /*<<< orphan*/  mutex; } ;
struct uart_state {struct tty_port port; } ;
struct uart_port {int dummy; } ;
struct tty_struct {struct uart_state* driver_data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 struct uart_port* FUNC3 (struct uart_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,unsigned int,unsigned int) ; 

__attribute__((used)) static int
FUNC5(struct tty_struct *tty, unsigned int set, unsigned int clear)
{
	struct uart_state *state = tty->driver_data;
	struct tty_port *port = &state->port;
	struct uart_port *uport;
	int ret = -EIO;

	FUNC0(&port->mutex);
	uport = FUNC3(state);
	if (!uport)
		goto out;

	if (!FUNC2(tty)) {
		FUNC4(uport, set, clear);
		ret = 0;
	}
out:
	FUNC1(&port->mutex);
	return ret;
}