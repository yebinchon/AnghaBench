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
typedef  int u32 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct imx_port {int dma_tx_nents; int /*<<< orphan*/  clk_ipg; int /*<<< orphan*/  clk_per; TYPE_1__ port; int /*<<< orphan*/  timer; int /*<<< orphan*/  gpios; scalar_t__ dma_is_rxing; int /*<<< orphan*/  rx_sgl; int /*<<< orphan*/  dma_chan_rx; scalar_t__ dma_is_txing; int /*<<< orphan*/ * tx_sgl; int /*<<< orphan*/  dma_chan_tx; scalar_t__ dma_is_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  UCR1 ; 
 int UCR1_ATDMAEN ; 
 int UCR1_RRDYEN ; 
 int UCR1_RTSDEN ; 
 int UCR1_RXDMAEN ; 
 int UCR1_TRDYEN ; 
 int UCR1_UARTEN ; 
 int /*<<< orphan*/  UCR2 ; 
 int UCR2_ATEN ; 
 int UCR2_TXEN ; 
 int /*<<< orphan*/  UCR4 ; 
 int UCR4_OREN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct imx_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct imx_port*) ; 
 int FUNC6 (struct imx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct imx_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC13(struct uart_port *port)
{
	struct imx_port *sport = (struct imx_port *)port;
	unsigned long flags;
	u32 ucr1, ucr2, ucr4;

	if (sport->dma_is_enabled) {
		FUNC3(sport->dma_chan_tx);
		if (sport->dma_is_txing) {
			FUNC2(sport->port.dev, &sport->tx_sgl[0],
				     sport->dma_tx_nents, DMA_TO_DEVICE);
			sport->dma_is_txing = 0;
		}
		FUNC3(sport->dma_chan_rx);
		if (sport->dma_is_rxing) {
			FUNC2(sport->port.dev, &sport->rx_sgl,
				     1, DMA_FROM_DEVICE);
			sport->dma_is_rxing = 0;
		}

		FUNC11(&sport->port.lock, flags);
		FUNC8(port);
		FUNC7(port);
		FUNC4(sport);
		FUNC12(&sport->port.lock, flags);
		FUNC5(sport);
	}

	FUNC10(sport->gpios);

	FUNC11(&sport->port.lock, flags);
	ucr2 = FUNC6(sport, UCR2);
	ucr2 &= ~(UCR2_TXEN | UCR2_ATEN);
	FUNC9(sport, ucr2, UCR2);

	ucr4 = FUNC6(sport, UCR4);
	ucr4 &= ~UCR4_OREN;
	FUNC9(sport, ucr4, UCR4);
	FUNC12(&sport->port.lock, flags);

	/*
	 * Stop our timer.
	 */
	FUNC1(&sport->timer);

	/*
	 * Disable all interrupts, port and break condition.
	 */

	FUNC11(&sport->port.lock, flags);
	ucr1 = FUNC6(sport, UCR1);
	ucr1 &= ~(UCR1_TRDYEN | UCR1_RRDYEN | UCR1_RTSDEN | UCR1_UARTEN | UCR1_RXDMAEN | UCR1_ATDMAEN);

	FUNC9(sport, ucr1, UCR1);
	FUNC12(&sport->port.lock, flags);

	FUNC0(sport->clk_per);
	FUNC0(sport->clk_ipg);
}