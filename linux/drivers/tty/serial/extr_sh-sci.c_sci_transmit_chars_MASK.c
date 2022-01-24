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
struct uart_port {char x_char; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {unsigned char* buf; size_t tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCSCR ; 
 unsigned short SCSCR_TIE ; 
 int /*<<< orphan*/  SCxSR ; 
 unsigned short FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  SCxTDR ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 int FUNC4 (struct uart_port*) ; 
 unsigned short FUNC5 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,int /*<<< orphan*/ ,unsigned char) ; 
 scalar_t__ FUNC7 (struct circ_buf*) ; 
 scalar_t__ FUNC8 (struct circ_buf*) ; 
 unsigned int FUNC9 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_port*) ; 

__attribute__((used)) static void FUNC11(struct uart_port *port)
{
	struct circ_buf *xmit = &port->state->xmit;
	unsigned int stopped = FUNC9(port);
	unsigned short status;
	unsigned short ctrl;
	int count;

	status = FUNC5(port, SCxSR);
	if (!(status & FUNC0(port))) {
		ctrl = FUNC5(port, SCSCR);
		if (FUNC8(xmit))
			ctrl &= ~SCSCR_TIE;
		else
			ctrl |= SCSCR_TIE;
		FUNC6(port, SCSCR, ctrl);
		return;
	}

	count = FUNC4(port);

	do {
		unsigned char c;

		if (port->x_char) {
			c = port->x_char;
			port->x_char = 0;
		} else if (!FUNC8(xmit) && !stopped) {
			c = xmit->buf[xmit->tail];
			xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		} else {
			break;
		}

		FUNC6(port, SCxTDR, c);

		port->icount.tx++;
	} while (--count > 0);

	FUNC2(port, FUNC1(port));

	if (FUNC7(xmit) < WAKEUP_CHARS)
		FUNC10(port);
	if (FUNC8(xmit))
		FUNC3(port);

}