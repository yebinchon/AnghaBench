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
struct zfcp_adapter {int /*<<< orphan*/  qdio; int /*<<< orphan*/  gs; int /*<<< orphan*/  ns_up_work; int /*<<< orphan*/  stat_work; int /*<<< orphan*/  scan_work; struct ccw_device* ccw_device; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct ccw_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  zfcp_sysfs_adapter_attrs ; 

void FUNC10(struct zfcp_adapter *adapter)
{
	struct ccw_device *cdev = adapter->ccw_device;

	FUNC0(&adapter->scan_work);
	FUNC1(&adapter->stat_work);
	FUNC1(&adapter->ns_up_work);
	FUNC5(adapter);

	FUNC7(adapter->gs);
	FUNC9(adapter);
	FUNC2(&cdev->dev.kobj, &zfcp_sysfs_adapter_attrs);

	FUNC6(adapter);
	FUNC4(adapter);
	FUNC8(adapter->qdio);

	FUNC3(adapter); /* final put to release */
}