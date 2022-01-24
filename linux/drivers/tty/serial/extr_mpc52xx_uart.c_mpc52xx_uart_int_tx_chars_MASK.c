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
struct TYPE_5__ {int /*<<< orphan*/  tx; } ;
struct uart_port {TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* write_char ) (struct uart_port*,scalar_t__) ;scalar_t__ (* raw_tx_rdy ) (struct uart_port*) ;} ;
struct TYPE_4__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 TYPE_3__* psc_ops ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct circ_buf*) ; 
 scalar_t__ FUNC6 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*) ; 

__attribute__((used)) static inline int
FUNC8(struct uart_port *port)
{
	struct circ_buf *xmit = &port->state->xmit;

	/* Process out of band chars */
	if (port->x_char) {
		psc_ops->write_char(port, port->x_char);
		port->icount.tx++;
		port->x_char = 0;
		return 1;
	}

	/* Nothing to do ? */
	if (FUNC5(xmit) || FUNC6(port)) {
		FUNC0(port);
		return 0;
	}

	/* Send chars */
	while (psc_ops->raw_tx_rdy(port)) {
		psc_ops->write_char(port, xmit->buf[xmit->tail]);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;
		if (FUNC5(xmit))
			break;
	}

	/* Wake up */
	if (FUNC4(xmit) < WAKEUP_CHARS)
		FUNC7(port);

	/* Maybe we're done after all */
	if (FUNC5(xmit)) {
		FUNC0(port);
		return 0;
	}

	return 1;
}