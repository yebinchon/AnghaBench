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
struct pch_udc_dev {int vbus_session; int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget; TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disconnect ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pch_udc_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pch_udc_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct pch_udc_dev *dev,
					  int is_active)
{
	if (is_active) {
		FUNC0(dev);
		dev->vbus_session = 1;
	} else {
		if (dev->driver && dev->driver->disconnect) {
			FUNC2(&dev->lock);
			dev->driver->disconnect(&dev->gadget);
			FUNC3(&dev->lock);
		}
		FUNC1(dev);
		dev->vbus_session = 0;
	}
}