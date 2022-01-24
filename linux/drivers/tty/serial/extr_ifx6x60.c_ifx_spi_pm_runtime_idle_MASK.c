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
struct spi_device {int dummy; } ;
struct ifx_spi_device {int /*<<< orphan*/  power_status; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct ifx_spi_device* FUNC1 (struct spi_device*) ; 
 struct spi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct spi_device *spi = FUNC2(dev);
	struct ifx_spi_device *ifx_dev = FUNC1(spi);

	if (!ifx_dev->power_status)
		FUNC0(dev);

	return 0;
}