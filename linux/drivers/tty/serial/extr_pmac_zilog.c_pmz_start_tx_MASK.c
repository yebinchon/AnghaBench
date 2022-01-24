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
struct uart_port {TYPE_2__ icount; TYPE_1__* state; scalar_t__ x_char; } ;
struct uart_pmac_port {int /*<<< orphan*/  port; int /*<<< orphan*/  flags; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMACZILOG_FLAG_TX_ACTIVE ; 
 int /*<<< orphan*/  PMACZILOG_FLAG_TX_STOPPED ; 
 int /*<<< orphan*/  R0 ; 
 unsigned char Tx_BUF_EMP ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned char FUNC1 (struct uart_pmac_port*,int /*<<< orphan*/ ) ; 
 struct uart_pmac_port* FUNC2 (struct uart_port*) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_pmac_port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_pmac_port*) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port)
{
	struct uart_pmac_port *uap = FUNC2(port);
	unsigned char status;

	FUNC0("pmz: start_tx()\n");

	uap->flags |= PMACZILOG_FLAG_TX_ACTIVE;
	uap->flags &= ~PMACZILOG_FLAG_TX_STOPPED;

	status = FUNC1(uap, R0);

	/* TX busy?  Just wait for the TX done interrupt.  */
	if (!(status & Tx_BUF_EMP))
		return;

	/* Send the first character to jump-start the TX done
	 * IRQ sending engine.
	 */
	if (port->x_char) {
		FUNC6(uap, port->x_char);
		FUNC7(uap);
		port->icount.tx++;
		port->x_char = 0;
	} else {
		struct circ_buf *xmit = &port->state->xmit;

		if (FUNC4(xmit))
			goto out;
		FUNC6(uap, xmit->buf[xmit->tail]);
		FUNC7(uap);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;

		if (FUNC3(xmit) < WAKEUP_CHARS)
			FUNC5(&uap->port);
	}
 out:
	FUNC0("pmz: start_tx() done.\n");
}