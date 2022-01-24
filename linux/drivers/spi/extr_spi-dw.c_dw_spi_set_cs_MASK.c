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
struct spi_device {int /*<<< orphan*/  chip_select; int /*<<< orphan*/  controller; } ;
struct dw_spi {scalar_t__ cs_override; } ;
struct chip_data {int /*<<< orphan*/  (* cs_control ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DW_SPI_SER ; 
 int /*<<< orphan*/  FUNC1 (struct dw_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dw_spi* FUNC2 (int /*<<< orphan*/ ) ; 
 struct chip_data* FUNC3 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct spi_device *spi, bool enable)
{
	struct dw_spi *dws = FUNC2(spi->controller);
	struct chip_data *chip = FUNC3(spi);

	if (chip && chip->cs_control)
		chip->cs_control(enable);

	if (enable)
		FUNC1(dws, DW_SPI_SER, FUNC0(spi->chip_select));
	else if (dws->cs_override)
		FUNC1(dws, DW_SPI_SER, 0);
}