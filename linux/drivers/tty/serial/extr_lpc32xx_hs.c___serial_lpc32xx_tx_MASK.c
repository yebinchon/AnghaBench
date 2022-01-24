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
typedef  unsigned int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  tx; } ;
struct uart_port {int /*<<< orphan*/  membase; TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int LPC32XX_HSU_TX_INT_EN ; 
 int FUNC3 (unsigned int) ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct circ_buf*) ; 
 scalar_t__ FUNC6 (struct circ_buf*) ; 
 scalar_t__ FUNC7 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct uart_port *port)
{
	struct circ_buf *xmit = &port->state->xmit;
	unsigned int tmp;

	if (port->x_char) {
		FUNC9((u32)port->x_char, FUNC1(port->membase));
		port->icount.tx++;
		port->x_char = 0;
		return;
	}

	if (FUNC6(xmit) || FUNC7(port))
		goto exit_tx;

	/* Transfer data */
	while (FUNC3(FUNC4(
		FUNC2(port->membase))) < 64) {
		FUNC9((u32) xmit->buf[xmit->tail],
		       FUNC1(port->membase));
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;
		if (FUNC6(xmit))
			break;
	}

	if (FUNC5(xmit) < WAKEUP_CHARS)
		FUNC8(port);

exit_tx:
	if (FUNC6(xmit)) {
		tmp = FUNC4(FUNC0(port->membase));
		tmp &= ~LPC32XX_HSU_TX_INT_EN;
		FUNC9(tmp, FUNC0(port->membase));
	}
}