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
struct spi_device {int /*<<< orphan*/  chip_select; TYPE_1__* controller; int /*<<< orphan*/  dev; } ;
struct chip_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct chip_data*) ; 
 struct chip_data* FUNC2 (struct spi_device*) ; 

__attribute__((used)) static void FUNC3(struct spi_device *spi)
{
	struct chip_data *chip = FUNC2((struct spi_device *)spi);

	FUNC0(&spi->dev, "spi_device %u.%u cleanup\n",
		spi->controller->bus_num, spi->chip_select);

	FUNC1(chip);
}