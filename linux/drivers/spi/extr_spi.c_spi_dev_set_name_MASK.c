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
struct acpi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC4(struct spi_device *spi)
{
	struct acpi_device *adev = FUNC0(&spi->dev);

	if (adev) {
		FUNC3(&spi->dev, "spi-%s", FUNC1(adev));
		return;
	}

	FUNC3(&spi->dev, "%s.%u", FUNC2(&spi->controller->dev),
		     spi->chip_select);
}