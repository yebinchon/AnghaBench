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
struct spi_mem_driver {int (* remove ) (struct spi_mem*) ;} ;
struct spi_mem {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct spi_device {TYPE_1__ dev; } ;

/* Variables and functions */
 struct spi_mem* FUNC0 (struct spi_device*) ; 
 int FUNC1 (struct spi_mem*) ; 
 struct spi_mem_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	struct spi_mem_driver *memdrv = FUNC2(spi->dev.driver);
	struct spi_mem *mem = FUNC0(spi);

	if (memdrv->remove)
		return memdrv->remove(mem);

	return 0;
}