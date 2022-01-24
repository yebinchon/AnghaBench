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
struct spi_device {int mode; scalar_t__ chip_select; int /*<<< orphan*/  dev; int /*<<< orphan*/  cs_gpio; } ;

/* Variables and functions */
 int EINVAL ; 
 int SPI_CS_HIGH ; 
 int SPI_NO_CS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	int ret;

	/* sanity check for native cs */
	if (spi->mode & SPI_NO_CS)
		return 0;
	if (FUNC3(spi->cs_gpio)) {
		/* with gpio-cs set the GPIO to the correct level
		 * and as output (in case the dt has the gpio not configured
		 * as output but native cs)
		 */
		ret = FUNC2(spi->cs_gpio,
					    (spi->mode & SPI_CS_HIGH) ? 0 : 1);
		if (ret)
			FUNC0(&spi->dev,
				"could not set gpio %i as output: %i\n",
				spi->cs_gpio, ret);

		return ret;
	}

	/* for dt-backwards compatibility: only support native on CS0
	 * known things not supported with broken native CS:
	 * * multiple chip-selects: cs0-cs2 are all
	 *     simultaniously asserted whenever there is a transfer
	 *     this even includes SPI_NO_CS
	 * * SPI_CS_HIGH: cs are always asserted low
	 * * cs_change: cs is deasserted after each spi_transfer
	 * * cs_delay_usec: cs is always deasserted one SCK cycle
	 *     after the last transfer
	 * probably more...
	 */
	FUNC1(&spi->dev,
		 "Native CS is not supported - please configure cs-gpio in device-tree\n");

	if (spi->chip_select == 0)
		return 0;

	FUNC1(&spi->dev, "Native CS is not working for cs > 0\n");

	return -EINVAL;
}