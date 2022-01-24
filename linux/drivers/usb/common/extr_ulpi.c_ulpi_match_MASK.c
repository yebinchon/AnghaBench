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
struct ulpi_driver {struct ulpi_device_id* id_table; } ;
struct ulpi_device_id {scalar_t__ vendor; scalar_t__ product; } ;
struct TYPE_2__ {scalar_t__ vendor; scalar_t__ product; } ;
struct ulpi {TYPE_1__ id; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*,struct device_driver*) ; 
 struct ulpi* FUNC1 (struct device*) ; 
 struct ulpi_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *driver)
{
	struct ulpi_driver *drv = FUNC2(driver);
	struct ulpi *ulpi = FUNC1(dev);
	const struct ulpi_device_id *id;

	/* Some ULPI devices don't have a vendor id so rely on OF match */
	if (ulpi->id.vendor == 0)
		return FUNC0(dev, driver);

	for (id = drv->id_table; id->vendor; id++)
		if (id->vendor == ulpi->id.vendor &&
		    id->product == ulpi->id.product)
			return 1;

	return 0;
}