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
struct spi_driver {scalar_t__ id_table; } ;
struct spi_device {scalar_t__ modalias; scalar_t__ driver_override; } ;
struct device_driver {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*,struct device_driver*) ; 
 scalar_t__ FUNC1 (struct device*,struct device_driver*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct spi_device const*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct spi_device* FUNC4 (struct device*) ; 
 struct spi_driver* FUNC5 (struct device_driver*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct device_driver *drv)
{
	const struct spi_device	*spi = FUNC4(dev);
	const struct spi_driver	*sdrv = FUNC5(drv);

	/* Check override first, and if set, only use the named driver */
	if (spi->driver_override)
		return FUNC3(spi->driver_override, drv->name) == 0;

	/* Attempt an OF style match */
	if (FUNC1(dev, drv))
		return 1;

	/* Then try ACPI */
	if (FUNC0(dev, drv))
		return 1;

	if (sdrv->id_table)
		return !!FUNC2(sdrv->id_table, spi);

	return FUNC3(spi->modalias, drv->name) == 0;
}