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
struct driver_data {scalar_t__ ssp_type; } ;
struct chip_data {int /*<<< orphan*/  gpio_cs_inverted; scalar_t__ gpiod_cs; int /*<<< orphan*/  (* cs_control ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ CE4100_SSP ; 
 int /*<<< orphan*/  PXA2XX_CS_DEASSERT ; 
 int /*<<< orphan*/  SSSR ; 
 int SSSR_BSY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (struct driver_data*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,int) ; 
 unsigned long FUNC4 (int) ; 
 int FUNC5 (struct driver_data*,int /*<<< orphan*/ ) ; 
 struct driver_data* FUNC6 (int /*<<< orphan*/ ) ; 
 struct chip_data* FUNC7 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct spi_device *spi)
{
	struct chip_data *chip = FUNC7(spi);
	struct driver_data *drv_data =
		FUNC6(spi->controller);
	unsigned long timeout;

	if (drv_data->ssp_type == CE4100_SSP)
		return;

	/* Wait until SSP becomes idle before deasserting the CS */
	timeout = jiffies + FUNC4(10);
	while (FUNC5(drv_data, SSSR) & SSSR_BSY &&
	       !FUNC9(jiffies, timeout))
		FUNC0();

	if (chip->cs_control) {
		chip->cs_control(PXA2XX_CS_DEASSERT);
		return;
	}

	if (chip->gpiod_cs) {
		FUNC1(chip->gpiod_cs, !chip->gpio_cs_inverted);
		return;
	}

	if (FUNC2(drv_data))
		FUNC3(spi, false);
}