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
struct tiny_spi {scalar_t__ gpio_cs_count; int /*<<< orphan*/ * gpio_cs; } ;
struct spi_device {size_t chip_select; int mode; } ;

/* Variables and functions */
 int SPI_CS_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct tiny_spi* FUNC1 (struct spi_device*) ; 

__attribute__((used)) static void FUNC2(struct spi_device *spi, int is_active)
{
	struct tiny_spi *hw = FUNC1(spi);

	if (hw->gpio_cs_count > 0) {
		FUNC0(hw->gpio_cs[spi->chip_select],
			(spi->mode & SPI_CS_HIGH) ? is_active : !is_active);
	}
}