#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  tx; } ;
struct TYPE_8__ {int fifosize; TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct uart_omap_port {TYPE_3__ port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_TX ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_omap_port*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct circ_buf*) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(struct uart_omap_port *up, unsigned int lsr)
{
	struct circ_buf *xmit = &up->port.state->xmit;
	int count;

	if (up->port.x_char) {
		FUNC1(up, UART_TX, up->port.x_char);
		up->port.icount.tx++;
		up->port.x_char = 0;
		return;
	}
	if (FUNC3(xmit) || FUNC4(&up->port)) {
		FUNC0(&up->port);
		return;
	}
	count = up->port.fifosize / 4;
	do {
		FUNC1(up, UART_TX, xmit->buf[xmit->tail]);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		up->port.icount.tx++;
		if (FUNC3(xmit))
			break;
	} while (--count > 0);

	if (FUNC2(xmit) < WAKEUP_CHARS)
		FUNC5(&up->port);

	if (FUNC3(xmit))
		FUNC0(&up->port);
}