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
struct device {scalar_t__ driver; } ;
struct apr_driver {int /*<<< orphan*/  (* remove ) (struct apr_device*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct apr_device {int /*<<< orphan*/  svc_id; TYPE_1__ dev; } ;
struct apr {int /*<<< orphan*/  svcs_lock; int /*<<< orphan*/  svcs_idr; } ;

/* Variables and functions */
 struct apr* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct apr_device*) ; 
 struct apr_device* FUNC5 (struct device*) ; 
 struct apr_driver* FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct apr_device *adev = FUNC5(dev);
	struct apr_driver *adrv;
	struct apr *apr = FUNC0(adev->dev.parent);

	if (dev->driver) {
		adrv = FUNC6(dev->driver);
		if (adrv->remove)
			adrv->remove(adev);
		FUNC2(&apr->svcs_lock);
		FUNC1(&apr->svcs_idr, adev->svc_id);
		FUNC3(&apr->svcs_lock);
	}

	return 0;
}