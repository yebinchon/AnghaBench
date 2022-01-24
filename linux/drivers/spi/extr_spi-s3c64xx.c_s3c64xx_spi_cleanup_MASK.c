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
struct TYPE_2__ {scalar_t__ of_node; } ;
struct spi_device {int /*<<< orphan*/  cs_gpio; TYPE_1__ dev; } ;
struct s3c64xx_spi_csinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct s3c64xx_spi_csinfo*) ; 
 struct s3c64xx_spi_csinfo* FUNC3 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct spi_device *spi)
{
	struct s3c64xx_spi_csinfo *cs = FUNC3(spi);

	if (FUNC1(spi->cs_gpio)) {
		FUNC0(spi->cs_gpio);
		if (spi->dev.of_node)
			FUNC2(cs);
		else {
			/* On non-DT platforms, the SPI core sets
			 * spi->cs_gpio to -ENOENT and .setup()
			 * overrides it with the GPIO pin value
			 * passed using platform data.
			 */
			spi->cs_gpio = -ENOENT;
		}
	}

	FUNC4(spi, NULL);
}