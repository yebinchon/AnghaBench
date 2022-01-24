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
struct spi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPI_LOOP ; 
 int /*<<< orphan*/  SPI_NO_CS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ loop_req ; 
 scalar_t__ no_cs ; 
 int FUNC2 (struct spi_device*) ; 
 int FUNC3 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spi_tests ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	int ret;

	if (loop_req || no_cs) {
		spi->mode |= loop_req ? SPI_LOOP : 0;
		spi->mode |= no_cs ? SPI_NO_CS : 0;
		ret = FUNC2(spi);
		if (ret) {
			FUNC0(&spi->dev, "SPI setup with SPI_LOOP or SPI_NO_CS failed (%d)\n",
				ret);
			return ret;
		}
	}

	FUNC1(&spi->dev, "Executing spi-loopback-tests\n");

	ret = FUNC3(spi, spi_tests);

	FUNC1(&spi->dev, "Finished spi-loopback-tests with return: %i\n",
		 ret);

	return ret;
}