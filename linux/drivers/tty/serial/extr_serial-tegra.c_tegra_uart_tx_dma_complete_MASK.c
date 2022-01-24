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
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__* state; } ;
struct tegra_uart_port {unsigned int tx_bytes_requested; TYPE_2__ uport; scalar_t__ tx_in_progress; int /*<<< orphan*/  tx_dma_desc; int /*<<< orphan*/  tx_cookie; int /*<<< orphan*/  tx_dma_chan; } ;
struct dma_tx_state {unsigned int residue; } ;
struct circ_buf {unsigned int tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_uart_port*) ; 
 scalar_t__ FUNC5 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(void *args)
{
	struct tegra_uart_port *tup = args;
	struct circ_buf *xmit = &tup->uport.state->xmit;
	struct dma_tx_state state;
	unsigned long flags;
	unsigned int count;

	FUNC1(tup->tx_dma_chan, tup->tx_cookie, &state);
	count = tup->tx_bytes_requested - state.residue;
	FUNC0(tup->tx_dma_desc);
	FUNC2(&tup->uport.lock, flags);
	xmit->tail = (xmit->tail + count) & (UART_XMIT_SIZE - 1);
	tup->tx_in_progress = 0;
	if (FUNC5(xmit) < WAKEUP_CHARS)
		FUNC6(&tup->uport);
	FUNC4(tup);
	FUNC3(&tup->uport.lock, flags);
}