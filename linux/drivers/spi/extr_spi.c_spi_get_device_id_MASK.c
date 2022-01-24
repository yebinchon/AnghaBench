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
struct spi_driver {int /*<<< orphan*/  id_table; } ;
struct spi_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct spi_device {TYPE_1__ dev; } ;

/* Variables and functions */
 struct spi_device_id const* FUNC0 (int /*<<< orphan*/ ,struct spi_device const*) ; 
 struct spi_driver* FUNC1 (int /*<<< orphan*/ ) ; 

const struct spi_device_id *FUNC2(const struct spi_device *sdev)
{
	const struct spi_driver *sdrv = FUNC1(sdev->dev.driver);

	return FUNC0(sdrv->id_table, sdev);
}