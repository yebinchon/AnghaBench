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
struct uart_port {int /*<<< orphan*/  lock; scalar_t__ sysrq; } ;
struct console {int dummy; } ;

/* Variables and functions */
 scalar_t__ oops_in_progress ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,char) ; 
 struct uart_port* sunhv_port ; 

__attribute__((used)) static void FUNC4(struct console *con, const char *s, unsigned n)
{
	struct uart_port *port = sunhv_port;
	unsigned long flags;
	int i, locked = 1;

	if (port->sysrq || oops_in_progress)
		locked = FUNC1(&port->lock, flags);
	else
		FUNC0(&port->lock, flags);

	for (i = 0; i < n; i++) {
		if (*s == '\n')
			FUNC3(port, '\r');
		FUNC3(port, *s++);
	}

	if (locked)
		FUNC2(&port->lock, flags);
}