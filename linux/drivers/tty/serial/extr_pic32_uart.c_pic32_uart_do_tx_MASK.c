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
struct uart_port {unsigned int x_char; TYPE_2__ icount; TYPE_1__* state; } ;
struct pic32_sport {int dummy; } ;
struct circ_buf {unsigned int* buf; size_t tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIC32_UART_STA ; 
 int PIC32_UART_STA_UTXBF ; 
 int /*<<< orphan*/  PIC32_UART_TX ; 
 unsigned int PIC32_UART_TX_FIFO_DEPTH ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (struct pic32_sport*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pic32_sport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct pic32_sport*,int /*<<< orphan*/ ,unsigned int) ; 
 struct pic32_sport* FUNC4 (struct uart_port*) ; 
 scalar_t__ FUNC5 (struct circ_buf*) ; 
 scalar_t__ FUNC6 (struct circ_buf*) ; 
 scalar_t__ FUNC7 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*) ; 

__attribute__((used)) static void FUNC9(struct uart_port *port)
{
	struct pic32_sport *sport = FUNC4(port);
	struct circ_buf *xmit = &port->state->xmit;
	unsigned int max_count = PIC32_UART_TX_FIFO_DEPTH;

	if (port->x_char) {
		FUNC3(sport, PIC32_UART_TX, port->x_char);
		port->icount.tx++;
		port->x_char = 0;
		return;
	}

	if (FUNC7(port)) {
		FUNC2(port);
		return;
	}

	if (FUNC6(xmit))
		goto txq_empty;

	/* keep stuffing chars into uart tx buffer
	 * 1) until uart fifo is full
	 * or
	 * 2) until the circ buffer is empty
	 * (all chars have been sent)
	 * or
	 * 3) until the max count is reached
	 * (prevents lingering here for too long in certain cases)
	 */
	while (!(PIC32_UART_STA_UTXBF &
		FUNC1(sport, PIC32_UART_STA))) {
		unsigned int c = xmit->buf[xmit->tail];

		FUNC3(sport, PIC32_UART_TX, c);

		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;
		if (FUNC6(xmit))
			break;
		if (--max_count == 0)
			break;
	}

	if (FUNC5(xmit) < WAKEUP_CHARS)
		FUNC8(port);

	if (FUNC6(xmit))
		goto txq_empty;

	return;

txq_empty:
	FUNC0(sport, 0);
}