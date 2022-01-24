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
struct TYPE_3__ {int /*<<< orphan*/  tx; } ;
struct uart_port {TYPE_1__ icount; scalar_t__ x_char; TYPE_2__* state; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int UART_XMIT_SIZE ; 
 int ULITE_STATUS_TXFULL ; 
 int /*<<< orphan*/  ULITE_TX ; 
 scalar_t__ WAKEUP_CHARS ; 
 scalar_t__ FUNC0 (struct circ_buf*) ; 
 scalar_t__ FUNC1 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,struct uart_port*) ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 

__attribute__((used)) static int FUNC5(struct uart_port *port, int stat)
{
	struct circ_buf *xmit  = &port->state->xmit;

	if (stat & ULITE_STATUS_TXFULL)
		return 0;

	if (port->x_char) {
		FUNC2(port->x_char, ULITE_TX, port);
		port->x_char = 0;
		port->icount.tx++;
		return 1;
	}

	if (FUNC1(xmit) || FUNC3(port))
		return 0;

	FUNC2(xmit->buf[xmit->tail], ULITE_TX, port);
	xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE-1);
	port->icount.tx++;

	/* wake up */
	if (FUNC0(xmit) < WAKEUP_CHARS)
		FUNC4(port);

	return 1;
}