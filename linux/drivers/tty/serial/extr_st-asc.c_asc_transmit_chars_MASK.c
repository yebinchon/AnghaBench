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
 int /*<<< orphan*/  ASC_TXBUF ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ,unsigned char) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port)
{
	struct circ_buf *xmit = &port->state->xmit;
	int txroom;
	unsigned char c;

	txroom = FUNC1(port);

	if ((txroom != 0) && port->x_char) {
		c = port->x_char;
		port->x_char = 0;
		FUNC2(port, ASC_TXBUF, c);
		port->icount.tx++;
		txroom = FUNC1(port);
	}

	if (FUNC5(port)) {
		/*
		 * We should try and stop the hardware here, but I
		 * don't think the ASC has any way to do that.
		 */
		FUNC0(port);
		return;
	}

	if (FUNC4(xmit)) {
		FUNC0(port);
		return;
	}

	if (txroom == 0)
		return;

	do {
		c = xmit->buf[xmit->tail];
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		FUNC2(port, ASC_TXBUF, c);
		port->icount.tx++;
		txroom--;
	} while ((txroom > 0) && (!FUNC4(xmit)));

	if (FUNC3(xmit) < WAKEUP_CHARS)
		FUNC6(port);

	if (FUNC4(xmit))
		FUNC0(port);
}