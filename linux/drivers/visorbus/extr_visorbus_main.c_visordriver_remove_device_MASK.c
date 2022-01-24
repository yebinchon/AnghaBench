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
struct visor_driver {int /*<<< orphan*/  (* remove ) (struct visor_device*) ;} ;
struct visor_device {int being_removed; int /*<<< orphan*/  device; int /*<<< orphan*/  visordriver_callback_lock; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct visor_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct visor_device*) ; 
 struct visor_device* FUNC5 (struct device*) ; 
 struct visor_driver* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *xdev)
{
	struct visor_device *dev = FUNC5(xdev);
	struct visor_driver *drv = FUNC6(xdev->driver);

	FUNC1(&dev->visordriver_callback_lock);
	dev->being_removed = true;
	drv->remove(dev);
	FUNC2(&dev->visordriver_callback_lock);
	FUNC0(dev);
	FUNC3(&dev->device);
	return 0;
}