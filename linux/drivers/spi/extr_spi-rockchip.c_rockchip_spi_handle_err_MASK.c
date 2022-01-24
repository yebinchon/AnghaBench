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
struct spi_message {int dummy; } ;
struct spi_master {int /*<<< orphan*/  dma_rx; int /*<<< orphan*/  dma_tx; } ;
struct rockchip_spi {int /*<<< orphan*/  state; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ ROCKCHIP_SPI_IMR ; 
 int RXDMA ; 
 int TXDMA ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rockchip_spi*,int) ; 
 struct rockchip_spi* FUNC3 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct spi_master *master,
				    struct spi_message *msg)
{
	struct rockchip_spi *rs = FUNC3(master);

	/* stop running spi transfer
	 * this also flushes both rx and tx fifos
	 */
	FUNC2(rs, false);

	/* make sure all interrupts are masked */
	FUNC4(0, rs->regs + ROCKCHIP_SPI_IMR);

	if (FUNC0(&rs->state) & TXDMA)
		FUNC1(master->dma_tx);

	if (FUNC0(&rs->state) & RXDMA)
		FUNC1(master->dma_rx);
}