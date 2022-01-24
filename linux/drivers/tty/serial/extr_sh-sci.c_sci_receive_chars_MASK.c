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
struct TYPE_4__ {int rx; int /*<<< orphan*/  parity; int /*<<< orphan*/  frame; } ;
struct uart_port {scalar_t__ type; TYPE_2__ icount; int /*<<< orphan*/  dev; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 scalar_t__ PORT_SCI ; 
 int /*<<< orphan*/  SCxRDR ; 
 int /*<<< orphan*/  SCxSR ; 
 unsigned short FUNC0 (struct uart_port*) ; 
 unsigned short FUNC1 (struct uart_port*) ; 
 unsigned short FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 unsigned char TTY_FRAME ; 
 unsigned char TTY_NORMAL ; 
 unsigned char TTY_PARITY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 
 void* FUNC7 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct tty_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_port*,char,unsigned char) ; 
 scalar_t__ FUNC11 (struct uart_port*,char) ; 

__attribute__((used)) static void FUNC12(struct uart_port *port)
{
	struct tty_port *tport = &port->state->port;
	int i, count, copied = 0;
	unsigned short status;
	unsigned char flag;

	status = FUNC7(port, SCxSR);
	if (!(status & FUNC2(port)))
		return;

	while (1) {
		/* Don't copy more bytes than there is room for in the buffer */
		count = FUNC8(tport, FUNC6(port));

		/* If for any reason we can't copy more data, we're done! */
		if (count == 0)
			break;

		if (port->type == PORT_SCI) {
			char c = FUNC7(port, SCxRDR);
			if (FUNC11(port, c))
				count = 0;
			else
				FUNC10(tport, c, TTY_NORMAL);
		} else {
			for (i = 0; i < count; i++) {
				char c = FUNC7(port, SCxRDR);

				status = FUNC7(port, SCxSR);
				if (FUNC11(port, c)) {
					count--; i--;
					continue;
				}

				/* Store data and status */
				if (status & FUNC0(port)) {
					flag = TTY_FRAME;
					port->icount.frame++;
					FUNC4(port->dev, "frame error\n");
				} else if (status & FUNC1(port)) {
					flag = TTY_PARITY;
					port->icount.parity++;
					FUNC4(port->dev, "parity error\n");
				} else
					flag = TTY_NORMAL;

				FUNC10(tport, c, flag);
			}
		}

		FUNC7(port, SCxSR); /* dummy read */
		FUNC5(port, FUNC3(port));

		copied += count;
		port->icount.rx += count;
	}

	if (copied) {
		/* Tell the rest of the system the news. New characters! */
		FUNC9(tport);
	} else {
		/* TTY buffers full; read from RX reg to prevent lockup */
		FUNC7(port, SCxRDR);
		FUNC7(port, SCxSR); /* dummy read */
		FUNC5(port, FUNC3(port));
	}
}