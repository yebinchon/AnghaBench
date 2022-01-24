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
struct imx_port {int /*<<< orphan*/ * dma_chan_tx; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/  rx_cookie; int /*<<< orphan*/ * dma_chan_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct imx_port *sport)
{
	if (sport->dma_chan_rx) {
		FUNC1(sport->dma_chan_rx);
		FUNC0(sport->dma_chan_rx);
		sport->dma_chan_rx = NULL;
		sport->rx_cookie = -EINVAL;
		FUNC2(sport->rx_buf);
		sport->rx_buf = NULL;
	}

	if (sport->dma_chan_tx) {
		FUNC1(sport->dma_chan_tx);
		FUNC0(sport->dma_chan_tx);
		sport->dma_chan_tx = NULL;
	}
}