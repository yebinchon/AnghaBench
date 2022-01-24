#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uart_port {TYPE_1__* state; struct tegra_tcu* private_data; } ;
struct tegra_tcu {int dummy; } ;
struct circ_buf {size_t tail; int /*<<< orphan*/ * buf; int /*<<< orphan*/  head; } ;
struct TYPE_2__ {struct circ_buf xmit; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,size_t,int) ; 
 int UART_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_tcu*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port)
{
	struct tegra_tcu *tcu = port->private_data;
	struct circ_buf *xmit = &port->state->xmit;
	unsigned long count;

	for (;;) {
		count = FUNC0(xmit->head, xmit->tail, UART_XMIT_SIZE);
		if (!count)
			break;

		FUNC1(tcu, &xmit->buf[xmit->tail], count);
		xmit->tail = (xmit->tail + count) & (UART_XMIT_SIZE - 1);
	}

	FUNC2(port);
}