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
struct spi_controller {int dummy; } ;
struct fsl_lpspi_data {int slave_aborted; int /*<<< orphan*/  dma_rx_completion; int /*<<< orphan*/  dma_tx_completion; int /*<<< orphan*/  xfer_done; int /*<<< orphan*/  usedma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fsl_lpspi_data* FUNC1 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC2(struct spi_controller *controller)
{
	struct fsl_lpspi_data *fsl_lpspi =
				FUNC1(controller);

	fsl_lpspi->slave_aborted = true;
	if (!fsl_lpspi->usedma)
		FUNC0(&fsl_lpspi->xfer_done);
	else {
		FUNC0(&fsl_lpspi->dma_tx_completion);
		FUNC0(&fsl_lpspi->dma_rx_completion);
	}

	return 0;
}