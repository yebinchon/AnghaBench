#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  brk; } ;
struct uart_port {int /*<<< orphan*/  dev; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCxSR ; 
 unsigned short FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  TTY_BREAK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct uart_port*) ; 
 unsigned short FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*) ; 
 scalar_t__ FUNC5 (struct tty_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct uart_port*) ; 

__attribute__((used)) static int FUNC7(struct uart_port *port)
{
	int copied = 0;
	unsigned short status = FUNC3(port, SCxSR);
	struct tty_port *tport = &port->state->port;

	if (FUNC6(port))
		return 0;

	if (status & FUNC0(port)) {
		port->icount.brk++;

		/* Notify of BREAK */
		if (FUNC5(tport, 0, TTY_BREAK))
			copied++;

		FUNC1(port->dev, "BREAK detected\n");
	}

	if (copied)
		FUNC4(tport);

	copied += FUNC2(port);

	return copied;
}