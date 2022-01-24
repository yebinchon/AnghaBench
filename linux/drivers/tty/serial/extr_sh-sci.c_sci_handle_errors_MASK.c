#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  parity; int /*<<< orphan*/  frame; int /*<<< orphan*/  overrun; } ;
struct uart_port {int /*<<< orphan*/  dev; TYPE_3__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct sci_port {TYPE_2__* params; } ;
struct TYPE_5__ {unsigned short overrun_mask; } ;
struct TYPE_4__ {struct tty_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCxSR ; 
 unsigned short FUNC0 (struct uart_port*) ; 
 unsigned short FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  TTY_FRAME ; 
 int /*<<< orphan*/  TTY_OVERRUN ; 
 int /*<<< orphan*/  TTY_PARITY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned short FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct sci_port* FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*) ; 
 scalar_t__ FUNC6 (struct tty_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct uart_port *port)
{
	int copied = 0;
	unsigned short status = FUNC3(port, SCxSR);
	struct tty_port *tport = &port->state->port;
	struct sci_port *s = FUNC4(port);

	/* Handle overruns */
	if (status & s->params->overrun_mask) {
		port->icount.overrun++;

		/* overrun error */
		if (FUNC6(tport, 0, TTY_OVERRUN))
			copied++;

		FUNC2(port->dev, "overrun error\n");
	}

	if (status & FUNC0(port)) {
		/* frame error */
		port->icount.frame++;

		if (FUNC6(tport, 0, TTY_FRAME))
			copied++;

		FUNC2(port->dev, "frame error\n");
	}

	if (status & FUNC1(port)) {
		/* parity error */
		port->icount.parity++;

		if (FUNC6(tport, 0, TTY_PARITY))
			copied++;

		FUNC2(port->dev, "parity error\n");
	}

	if (copied)
		FUNC5(tport);

	return copied;
}