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
typedef  int u32 ;
struct spi_master {int dummy; } ;
struct spi_device {unsigned int chip_select; int mode; int /*<<< orphan*/  cs_gpio; struct spi_master* master; } ;
struct lantiq_ssc_spi {unsigned int base_cs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LTQ_SPI_GPOCON ; 
 unsigned int LTQ_SPI_GPOCON_ISCSBN_S ; 
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lantiq_ssc_spi*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct lantiq_ssc_spi* FUNC4 (struct spi_master*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spidev)
{
	struct spi_master *master = spidev->master;
	struct lantiq_ssc_spi *spi = FUNC4(master);
	unsigned int cs = spidev->chip_select;
	u32 gpocon;

	/* GPIOs are used for CS */
	if (FUNC2(spidev->cs_gpio))
		return 0;

	FUNC0(spi->dev, "using internal chipselect %u\n", cs);

	if (cs < spi->base_cs) {
		FUNC1(spi->dev,
			"chipselect %i too small (min %i)\n", cs, spi->base_cs);
		return -EINVAL;
	}

	/* set GPO pin to CS mode */
	gpocon = 1 << ((cs - spi->base_cs) + LTQ_SPI_GPOCON_ISCSBN_S);

	/* invert GPO pin */
	if (spidev->mode & SPI_CS_HIGH)
		gpocon |= 1 << (cs - spi->base_cs);

	FUNC3(spi, 0, gpocon, LTQ_SPI_GPOCON);

	return 0;
}