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
struct spi_transfer {scalar_t__ len; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;
struct mtk_spi_slave {int slave_aborted; struct spi_transfer* cur_transfer; int /*<<< orphan*/  xfer_done; } ;

/* Variables and functions */
 scalar_t__ MTK_SPI_SLAVE_MAX_FIFO_SIZE ; 
 int FUNC0 (struct spi_controller*,struct spi_device*,struct spi_transfer*) ; 
 int FUNC1 (struct spi_controller*,struct spi_device*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mtk_spi_slave* FUNC3 (struct spi_controller*) ; 

__attribute__((used)) static int FUNC4(struct spi_controller *ctlr,
				      struct spi_device *spi,
				      struct spi_transfer *xfer)
{
	struct mtk_spi_slave *mdata = FUNC3(ctlr);

	FUNC2(&mdata->xfer_done);
	mdata->slave_aborted = false;
	mdata->cur_transfer = xfer;

	if (xfer->len > MTK_SPI_SLAVE_MAX_FIFO_SIZE)
		return FUNC0(ctlr, spi, xfer);
	else
		return FUNC1(ctlr, spi, xfer);
}