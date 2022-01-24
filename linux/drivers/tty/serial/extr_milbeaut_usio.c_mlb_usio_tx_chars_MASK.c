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
struct TYPE_4__ {int /*<<< orphan*/  tx; } ;
struct uart_port {int x_char; int fifosize; scalar_t__ membase; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {int* buf; size_t tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int MLB_USIO_FCR_FDRQ ; 
 int MLB_USIO_FCR_FTIE ; 
 scalar_t__ MLB_USIO_REG_DR ; 
 scalar_t__ MLB_USIO_REG_FBYTE ; 
 scalar_t__ MLB_USIO_REG_FCR ; 
 scalar_t__ MLB_USIO_REG_SCR ; 
 int MLB_USIO_SCR_TBIE ; 
 int MLB_USIO_SCR_TIE ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct uart_port *port)
{
	struct circ_buf *xmit = &port->state->xmit;
	int count;

	FUNC8(FUNC2(port->membase + MLB_USIO_REG_FCR) & ~MLB_USIO_FCR_FTIE,
	       port->membase + MLB_USIO_REG_FCR);
	FUNC7(FUNC1(port->membase + MLB_USIO_REG_SCR) &
	       ~(MLB_USIO_SCR_TIE | MLB_USIO_SCR_TBIE),
	       port->membase + MLB_USIO_REG_SCR);

	if (port->x_char) {
		FUNC8(port->x_char, port->membase + MLB_USIO_REG_DR);
		port->icount.tx++;
		port->x_char = 0;
		return;
	}
	if (FUNC4(xmit) || FUNC5(port)) {
		FUNC0(port);
		return;
	}

	count = port->fifosize -
		(FUNC2(port->membase + MLB_USIO_REG_FBYTE) & 0xff);

	do {
		FUNC8(xmit->buf[xmit->tail], port->membase + MLB_USIO_REG_DR);

		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;
		if (FUNC4(xmit))
			break;

	} while (--count > 0);

	FUNC8(FUNC2(port->membase + MLB_USIO_REG_FCR) & ~MLB_USIO_FCR_FDRQ,
	       port->membase + MLB_USIO_REG_FCR);

	FUNC7(FUNC1(port->membase + MLB_USIO_REG_SCR) | MLB_USIO_SCR_TBIE,
	       port->membase + MLB_USIO_REG_SCR);

	if (FUNC3(xmit) < WAKEUP_CHARS)
		FUNC6(port);

	if (FUNC4(xmit))
		FUNC0(port);
}