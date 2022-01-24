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
struct uart_port {int line; TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct sbd_port {struct uart_port port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 unsigned int M_DUART_IMR_TX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  R_DUART_TX_HOLD ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 unsigned int FUNC1 (struct sbd_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct circ_buf*) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct sbd_port*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sbd_port*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct sbd_port *sport)
{
	struct uart_port *uport = &sport->port;
	struct circ_buf *xmit = &sport->port.state->xmit;
	unsigned int mask;
	int stop_tx;

	/* XON/XOFF chars.  */
	if (sport->port.x_char) {
		FUNC6(sport, R_DUART_TX_HOLD, sport->port.x_char);
		sport->port.icount.tx++;
		sport->port.x_char = 0;
		return;
	}

	/* If nothing to do or stopped or hardware stopped.  */
	stop_tx = (FUNC3(xmit) || FUNC4(&sport->port));

	/* Send char.  */
	if (!stop_tx) {
		FUNC6(sport, R_DUART_TX_HOLD, xmit->buf[xmit->tail]);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		sport->port.icount.tx++;

		if (FUNC2(xmit) < WAKEUP_CHARS)
			FUNC5(&sport->port);
	}

	/* Are we are done?  */
	if (stop_tx || FUNC3(xmit)) {
		/* Disable tx interrupts.  */
		mask = FUNC1(sport, FUNC0((uport->line) % 2));
		mask &= ~M_DUART_IMR_TX;
		FUNC7(sport, FUNC0((uport->line) % 2), mask);
	}
}