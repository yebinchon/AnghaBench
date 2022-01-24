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
struct spi_device {int /*<<< orphan*/  controller; } ;
struct driver_data {scalar_t__ ssp_type; int /*<<< orphan*/  cs_gpiods; } ;
struct chip_data {scalar_t__ gpiod_cs; } ;

/* Variables and functions */
 scalar_t__ CE4100_SSP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct chip_data*) ; 
 struct driver_data* FUNC2 (int /*<<< orphan*/ ) ; 
 struct chip_data* FUNC3 (struct spi_device*) ; 

__attribute__((used)) static void FUNC4(struct spi_device *spi)
{
	struct chip_data *chip = FUNC3(spi);
	struct driver_data *drv_data =
		FUNC2(spi->controller);

	if (!chip)
		return;

	if (drv_data->ssp_type != CE4100_SSP && !drv_data->cs_gpiods &&
	    chip->gpiod_cs)
		FUNC0(chip->gpiod_cs);

	FUNC1(chip);
}