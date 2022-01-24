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
struct visor_driver {int (* probe ) (struct visor_device*) ;} ;
struct visor_device {int being_removed; int /*<<< orphan*/  visordriver_callback_lock; int /*<<< orphan*/  device; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct visor_device*) ; 
 int FUNC4 (struct visor_device*) ; 
 struct visor_device* FUNC5 (struct device*) ; 
 struct visor_driver* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *xdev)
{
	int err;
	struct visor_driver *drv = FUNC6(xdev->driver);
	struct visor_device *dev = FUNC5(xdev);

	FUNC1(&dev->visordriver_callback_lock);
	dev->being_removed = false;
	err = drv->probe(dev);
	if (err) {
		FUNC2(&dev->visordriver_callback_lock);
		return err;
	}
	/* success: reference kept via unmatched get_device() */
	FUNC0(&dev->device);
	FUNC3(dev);
	FUNC2(&dev->visordriver_callback_lock);
	return 0;
}