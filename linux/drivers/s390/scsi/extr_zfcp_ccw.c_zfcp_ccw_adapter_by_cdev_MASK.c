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
struct zfcp_adapter {int /*<<< orphan*/  ref; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct zfcp_adapter* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  zfcp_ccw_adapter_ref_lock ; 

struct zfcp_adapter *FUNC4(struct ccw_device *cdev)
{
	struct zfcp_adapter *adapter;
	unsigned long flags;

	FUNC2(&zfcp_ccw_adapter_ref_lock, flags);
	adapter = FUNC0(&cdev->dev);
	if (adapter)
		FUNC1(&adapter->ref);
	FUNC3(&zfcp_ccw_adapter_ref_lock, flags);
	return adapter;
}