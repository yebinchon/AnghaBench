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
struct serdev_device_driver {int (* probe ) (int /*<<< orphan*/ ) ;} ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int FUNC0 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct serdev_device_driver* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	const struct serdev_device_driver *sdrv = FUNC4(dev->driver);
	int ret;

	ret = FUNC0(dev, true);
	if (ret)
		return ret;

	ret = sdrv->probe(FUNC3(dev));
	if (ret)
		FUNC1(dev, true);

	return ret;
}