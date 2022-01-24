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
struct scatterlist {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct imx_port {scalar_t__ dma_is_txing; int /*<<< orphan*/  dma_tx_nents; TYPE_1__ port; int /*<<< orphan*/  dma_chan_tx; scalar_t__ tx_bytes; struct scatterlist* tx_sgl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  IMX21_UTS ; 
 int /*<<< orphan*/  UBIR ; 
 int /*<<< orphan*/  UBMR ; 
 int /*<<< orphan*/  UCR1 ; 
 int UCR1_TXDMAEN ; 
 int /*<<< orphan*/  UCR2 ; 
 int UCR2_SRST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct imx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct imx_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct imx_port *sport = (struct imx_port *)port;
	struct scatterlist *sgl = &sport->tx_sgl[0];
	u32 ucr2;
	int i = 100, ubir, ubmr, uts;

	if (!sport->dma_chan_tx)
		return;

	sport->tx_bytes = 0;
	FUNC1(sport->dma_chan_tx);
	if (sport->dma_is_txing) {
		u32 ucr1;

		FUNC0(sport->port.dev, sgl, sport->dma_tx_nents,
			     DMA_TO_DEVICE);
		ucr1 = FUNC2(sport, UCR1);
		ucr1 &= ~UCR1_TXDMAEN;
		FUNC3(sport, ucr1, UCR1);
		sport->dma_is_txing = 0;
	}

	/*
	 * According to the Reference Manual description of the UART SRST bit:
	 *
	 * "Reset the transmit and receive state machines,
	 * all FIFOs and register USR1, USR2, UBIR, UBMR, UBRC, URXD, UTXD
	 * and UTS[6-3]".
	 *
	 * We don't need to restore the old values from USR1, USR2, URXD and
	 * UTXD. UBRC is read only, so only save/restore the other three
	 * registers.
	 */
	ubir = FUNC2(sport, UBIR);
	ubmr = FUNC2(sport, UBMR);
	uts = FUNC2(sport, IMX21_UTS);

	ucr2 = FUNC2(sport, UCR2);
	ucr2 &= ~UCR2_SRST;
	FUNC3(sport, ucr2, UCR2);

	while (!(FUNC2(sport, UCR2) & UCR2_SRST) && (--i > 0))
		FUNC4(1);

	/* Restore the registers */
	FUNC3(sport, ubir, UBIR);
	FUNC3(sport, ubmr, UBMR);
	FUNC3(sport, uts, IMX21_UTS);
}