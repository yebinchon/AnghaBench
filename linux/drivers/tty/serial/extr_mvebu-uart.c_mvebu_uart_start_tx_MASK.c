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
struct uart_port {scalar_t__ membase; TYPE_1__ icount; TYPE_2__* state; } ;
struct circ_buf {unsigned int* buf; size_t tail; } ;
struct TYPE_4__ {struct circ_buf xmit; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct uart_port*) ; 
 scalar_t__ FUNC1 (struct uart_port*) ; 
 scalar_t__ FUNC2 (struct uart_port*) ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 
 int UART_XMIT_SIZE ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port)
{
	unsigned int ctl;
	struct circ_buf *xmit = &port->state->xmit;

	if (FUNC1(port) && !FUNC5(xmit)) {
		FUNC6(xmit->buf[xmit->tail], port->membase + FUNC3(port));
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;
	}

	ctl = FUNC4(port->membase + FUNC2(port));
	ctl |= FUNC0(port);
	FUNC6(ctl, port->membase + FUNC2(port));
}