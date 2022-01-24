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
struct spi_transfer {int /*<<< orphan*/  len; } ;
struct spi_master {scalar_t__ (* can_dma ) (struct spi_master*,struct spi_device*,struct spi_transfer*) ;} ;
struct spi_device {int /*<<< orphan*/  master; } ;
struct img_spfi {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SPFI_TRANSACTION_TSIZE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_master*,struct spi_device*,struct spi_transfer*) ; 
 int FUNC2 (struct spi_master*,struct spi_device*,struct spi_transfer*) ; 
 int FUNC3 (struct spi_master*,struct spi_device*,struct spi_transfer*) ; 
 struct img_spfi* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct spi_master*,struct spi_device*,struct spi_transfer*) ; 

__attribute__((used)) static int FUNC6(struct spi_master *master,
				 struct spi_device *spi,
				 struct spi_transfer *xfer)
{
	struct img_spfi *spfi = FUNC4(spi->master);
	int ret;

	if (xfer->len > SPFI_TRANSACTION_TSIZE_MASK) {
		FUNC0(spfi->dev,
			"Transfer length (%d) is greater than the max supported (%d)",
			xfer->len, SPFI_TRANSACTION_TSIZE_MASK);
		return -EINVAL;
	}

	FUNC1(master, spi, xfer);
	if (master->can_dma && master->can_dma(master, spi, xfer))
		ret = FUNC2(master, spi, xfer);
	else
		ret = FUNC3(master, spi, xfer);

	return ret;
}