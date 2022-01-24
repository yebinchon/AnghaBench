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
struct spi_device {int mode; int /*<<< orphan*/  max_speed_hz; int /*<<< orphan*/  chip_select; int /*<<< orphan*/  bits_per_word; int /*<<< orphan*/  dev; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int MCFQSPI_BUSCLK ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	FUNC1(FUNC3(spi->master),
			    spi->chip_select, spi->mode & SPI_CS_HIGH);

	FUNC0(&spi->dev,
			"bits per word %d, chip select %d, speed %d KHz\n",
			spi->bits_per_word, spi->chip_select,
			(MCFQSPI_BUSCLK / FUNC2(spi->max_speed_hz))
			/ 1000);

	return 0;
}