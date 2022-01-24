#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tx; } ;
struct TYPE_8__ {TYPE_2__ icount; TYPE_3__* state; } ;
struct tegra_uart_port {TYPE_4__ uport; TYPE_1__* cdata; } ;
struct circ_buf {size_t tail; int /*<<< orphan*/ * buf; } ;
struct TYPE_7__ {struct circ_buf xmit; } ;
struct TYPE_5__ {scalar_t__ tx_fifo_full_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long TEGRA_UART_LSR_TXFIFO_FULL ; 
 int /*<<< orphan*/  UART_LSR ; 
 int /*<<< orphan*/  UART_TX ; 
 int UART_XMIT_SIZE ; 
 unsigned long FUNC1 (struct tegra_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct circ_buf*) ; 

__attribute__((used)) static void FUNC4(struct tegra_uart_port *tup, int max_bytes)
{
	struct circ_buf *xmit = &tup->uport.state->xmit;
	int i;

	for (i = 0; i < max_bytes; i++) {
		FUNC0(FUNC3(xmit));
		if (tup->cdata->tx_fifo_full_status) {
			unsigned long lsr = FUNC1(tup, UART_LSR);
			if ((lsr & TEGRA_UART_LSR_TXFIFO_FULL))
				break;
		}
		FUNC2(tup, xmit->buf[xmit->tail], UART_TX);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		tup->uport.icount.tx++;
	}
}