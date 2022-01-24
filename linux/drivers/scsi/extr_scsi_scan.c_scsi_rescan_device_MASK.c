#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_driver {int /*<<< orphan*/  (* rescan ) (struct device*) ;} ;
struct scsi_device {TYPE_1__* handler; } ;
struct device {TYPE_2__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* rescan ) (struct scsi_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 struct scsi_device* FUNC6 (struct device*) ; 
 struct scsi_driver* FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct device *dev)
{
	struct scsi_device *sdev = FUNC6(dev);

	FUNC0(dev);

	FUNC3(sdev);

	if (sdev->handler && sdev->handler->rescan)
		sdev->handler->rescan(sdev);

	if (dev->driver && FUNC8(dev->driver->owner)) {
		struct scsi_driver *drv = FUNC7(dev->driver);

		if (drv->rescan)
			drv->rescan(dev);
		FUNC2(dev->driver->owner);
	}
	FUNC1(dev);
}