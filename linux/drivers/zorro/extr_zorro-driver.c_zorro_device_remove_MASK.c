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
struct zorro_driver {int /*<<< orphan*/  (* remove ) (struct zorro_dev*) ;} ;
struct zorro_dev {int /*<<< orphan*/ * driver; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zorro_dev*) ; 
 struct zorro_dev* FUNC1 (struct device*) ; 
 struct zorro_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct zorro_dev *z = FUNC1(dev);
	struct zorro_driver *drv = FUNC2(dev->driver);

	if (drv) {
		if (drv->remove)
			drv->remove(z);
		z->driver = NULL;
	}
	return 0;
}