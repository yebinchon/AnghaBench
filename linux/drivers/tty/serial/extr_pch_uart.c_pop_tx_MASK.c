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
struct uart_port {int /*<<< orphan*/  dev; TYPE_1__* state; } ;
struct eg20t_port {struct uart_port port; } ;
struct circ_buf {size_t tail; int /*<<< orphan*/ * buf; int /*<<< orphan*/  head; } ;
struct TYPE_2__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,size_t,int) ; 
 int UART_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct eg20t_port*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 

__attribute__((used)) static int FUNC6(struct eg20t_port *priv, int size)
{
	int count = 0;
	struct uart_port *port = &priv->port;
	struct circ_buf *xmit = &port->state->xmit;

	if (FUNC5(port) || FUNC4(xmit) || count >= size)
		goto pop_tx_end;

	do {
		int cnt_to_end =
		    FUNC0(xmit->head, xmit->tail, UART_XMIT_SIZE);
		int sz = FUNC2(size - count, cnt_to_end);
		FUNC3(priv, &xmit->buf[xmit->tail], sz);
		xmit->tail = (xmit->tail + sz) & (UART_XMIT_SIZE - 1);
		count += sz;
	} while (!FUNC4(xmit) && count < size);

pop_tx_end:
	FUNC1(priv->port.dev, "%d characters. Remained %d characters.(%lu)\n",
		 count, size - count, jiffies);

	return count;
}