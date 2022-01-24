#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uart_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct tegra_uart_port {scalar_t__ rts_active; struct uart_port uport; int /*<<< orphan*/  rx_cookie; int /*<<< orphan*/  rx_dma_chan; } ;
struct dma_tx_state {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;

/* Variables and functions */
 int DMA_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_uart_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_uart_port*) ; 

__attribute__((used)) static void FUNC7(void *args)
{
	struct tegra_uart_port *tup = args;
	struct uart_port *u = &tup->uport;
	unsigned long flags;
	struct dma_tx_state state;
	enum dma_status status;

	FUNC3(&u->lock, flags);

	status = FUNC1(tup->rx_dma_chan, tup->rx_cookie, &state);

	if (status == DMA_IN_PROGRESS) {
		FUNC0(tup->uport.dev, "RX DMA is in progress\n");
		goto done;
	}

	/* Deactivate flow control to stop sender */
	if (tup->rts_active)
		FUNC2(tup, false);

	FUNC5(tup, 0);
	FUNC6(tup);

	/* Activate flow control to start transfer */
	if (tup->rts_active)
		FUNC2(tup, true);

done:
	FUNC4(&u->lock, flags);
}