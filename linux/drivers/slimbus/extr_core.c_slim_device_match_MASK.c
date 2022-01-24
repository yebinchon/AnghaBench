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
struct slim_driver {int /*<<< orphan*/  id_table; } ;
struct slim_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*,struct device_driver*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct slim_device*) ; 
 struct slim_device* FUNC2 (struct device*) ; 
 struct slim_driver* FUNC3 (struct device_driver*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct device_driver *drv)
{
	struct slim_device *sbdev = FUNC2(dev);
	struct slim_driver *sbdrv = FUNC3(drv);

	/* Attempt an OF style match first */
	if (FUNC0(dev, drv))
		return 1;

	return !!FUNC1(sbdrv->id_table, sbdev);
}