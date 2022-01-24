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
struct fsl_dspi_dma {int curr_xfer_len; int /*<<< orphan*/  cmd_rx_complete; int /*<<< orphan*/ * rx_dma_buf; } ;
struct fsl_dspi {struct fsl_dspi_dma* dma; scalar_t__ rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_dspi*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *arg)
{
	struct fsl_dspi *dspi = arg;
	struct fsl_dspi_dma *dma = dspi->dma;
	int i;

	if (dspi->rx) {
		for (i = 0; i < dma->curr_xfer_len; i++)
			FUNC1(dspi, dspi->dma->rx_dma_buf[i]);
	}

	FUNC0(&dma->cmd_rx_complete);
}