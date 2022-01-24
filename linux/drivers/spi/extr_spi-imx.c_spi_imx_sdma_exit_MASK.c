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
struct spi_master {int /*<<< orphan*/ * dma_tx; int /*<<< orphan*/ * dma_rx; } ;
struct TYPE_2__ {struct spi_master* master; } ;
struct spi_imx_data {TYPE_1__ bitbang; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct spi_imx_data *spi_imx)
{
	struct spi_master *master = spi_imx->bitbang.master;

	if (master->dma_rx) {
		FUNC0(master->dma_rx);
		master->dma_rx = NULL;
	}

	if (master->dma_tx) {
		FUNC0(master->dma_tx);
		master->dma_tx = NULL;
	}
}