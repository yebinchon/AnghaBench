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
struct TYPE_4__ {TYPE_1__* state; } ;
struct tegra_uart_port {scalar_t__ use_tx_pio; int /*<<< orphan*/  current_baud; TYPE_2__ uport; } ;
struct circ_buf {size_t tail; int /*<<< orphan*/  head; int /*<<< orphan*/ * buf; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 unsigned long TEGRA_UART_MIN_DMA ; 
 int /*<<< orphan*/  UART_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_uart_port*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_uart_port*,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct tegra_uart_port *tup)
{
	unsigned long tail;
	unsigned long count;
	struct circ_buf *xmit = &tup->uport.state->xmit;

	if (!tup->current_baud)
		return;

	tail = (unsigned long)&xmit->buf[xmit->tail];
	count = FUNC1(xmit->head, xmit->tail, UART_XMIT_SIZE);
	if (!count)
		return;

	if (tup->use_tx_pio || count < TEGRA_UART_MIN_DMA)
		FUNC2(tup, count);
	else if (FUNC0(tail) > 0)
		FUNC2(tup, FUNC0(tail));
	else
		FUNC3(tup, count);
}