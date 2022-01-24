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
struct spi_transfer {int /*<<< orphan*/  len; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct spi_controller {int dummy; } ;
struct fsl_lpspi_data {int slave_aborted; int /*<<< orphan*/  xfer_done; int /*<<< orphan*/  remain; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsl_lpspi_data*) ; 
 int FUNC1 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_lpspi_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fsl_lpspi_data* FUNC4 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC5(struct spi_controller *controller,
				  struct spi_transfer *t)
{
	struct fsl_lpspi_data *fsl_lpspi =
				FUNC4(controller);
	int ret;

	fsl_lpspi->tx_buf = t->tx_buf;
	fsl_lpspi->rx_buf = t->rx_buf;
	fsl_lpspi->remain = t->len;

	FUNC3(&fsl_lpspi->xfer_done);
	fsl_lpspi->slave_aborted = false;

	FUNC2(fsl_lpspi);

	ret = FUNC1(controller);
	if (ret)
		return ret;

	FUNC0(fsl_lpspi);

	return 0;
}