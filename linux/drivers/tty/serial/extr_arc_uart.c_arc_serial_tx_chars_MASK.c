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
struct uart_port {unsigned char x_char; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {unsigned char* buf; size_t tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int TXEMPTY ; 
 int FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 
 scalar_t__ FUNC7 (unsigned char) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port)
{
	struct circ_buf *xmit = &port->state->xmit;
	int sent = 0;
	unsigned char ch;

	if (FUNC7(port->x_char)) {
		FUNC1(port, port->x_char);
		port->icount.tx++;
		port->x_char = 0;
		sent = 1;
	} else if (!FUNC5(xmit)) {
		ch = xmit->buf[xmit->tail];
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;
		while (!(FUNC0(port) & TXEMPTY))
			FUNC3();
		FUNC1(port, ch);
		sent = 1;
	}

	/*
	 * If num chars in xmit buffer are too few, ask tty layer for more.
	 * By Hard ISR to schedule processing in software interrupt part
	 */
	if (FUNC4(xmit) < WAKEUP_CHARS)
		FUNC6(port);

	if (sent)
		FUNC2(port);
}