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
struct tegra_uart_port {scalar_t__ rts_active; int /*<<< orphan*/  rx_cookie; int /*<<< orphan*/  rx_dma_chan; } ;
struct dma_tx_state {int /*<<< orphan*/  residue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_uart_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_uart_port*) ; 

__attribute__((used)) static void FUNC5(struct tegra_uart_port *tup)
{
	struct dma_tx_state state;

	/* Deactivate flow control to stop sender */
	if (tup->rts_active)
		FUNC2(tup, false);

	FUNC0(tup->rx_dma_chan);
	FUNC1(tup->rx_dma_chan, tup->rx_cookie, &state);
	FUNC3(tup, state.residue);
	FUNC4(tup);

	if (tup->rts_active)
		FUNC2(tup, true);
}