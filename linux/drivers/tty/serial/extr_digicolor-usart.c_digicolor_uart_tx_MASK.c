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
struct uart_port {int /*<<< orphan*/  lock; TYPE_2__ icount; scalar_t__ membase; scalar_t__ x_char; TYPE_1__* state; } ;
struct circ_buf {size_t tail; int /*<<< orphan*/ * buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int UART_XMIT_SIZE ; 
 scalar_t__ UA_EMI_REC ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 scalar_t__ FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct circ_buf*) ; 
 scalar_t__ FUNC6 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct uart_port *port)
{
	struct circ_buf *xmit = &port->state->xmit;
	unsigned long flags;

	if (FUNC1(port))
		return;

	FUNC2(&port->lock, flags);

	if (port->x_char) {
		FUNC9(port->x_char, port->membase + UA_EMI_REC);
		port->icount.tx++;
		port->x_char = 0;
		goto out;
	}

	if (FUNC5(xmit) || FUNC6(port)) {
		FUNC0(port);
		goto out;
	}

	while (!FUNC5(xmit)) {
		FUNC8(xmit->buf[xmit->tail], port->membase + UA_EMI_REC);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;

		if (FUNC1(port))
			break;
	}

	if (FUNC4(xmit) < WAKEUP_CHARS)
		FUNC7(port);

out:
	FUNC3(&port->lock, flags);
}