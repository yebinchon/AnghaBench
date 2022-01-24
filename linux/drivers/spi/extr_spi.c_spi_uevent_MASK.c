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
struct spi_device {int /*<<< orphan*/  modalias; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SPI_MODULE_PREFIX ; 
 int FUNC0 (struct device*,struct kobj_uevent_env*) ; 
 int FUNC1 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct spi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct kobj_uevent_env *env)
{
	const struct spi_device		*spi = FUNC2(dev);
	int rc;

	rc = FUNC0(dev, env);
	if (rc != -ENODEV)
		return rc;

	return FUNC1(env, "MODALIAS=%s%s", SPI_MODULE_PREFIX, spi->modalias);
}