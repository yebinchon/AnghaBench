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
struct spi_device {struct spi_device* driver_override; TYPE_1__* controller; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* cleanup ) (struct spi_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*) ; 
 struct spi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct spi_device	*spi = FUNC3(dev);

	/* spi controllers may cleanup for released devices */
	if (spi->controller->cleanup)
		spi->controller->cleanup(spi);

	FUNC1(spi->controller);
	FUNC0(spi->driver_override);
	FUNC0(spi);
}