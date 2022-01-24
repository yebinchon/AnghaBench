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
struct zfcp_adapter {int /*<<< orphan*/  scan_work; } ;
struct ccw_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct zfcp_adapter* FUNC2 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct ccw_device *cdev, int clear, char *tag)
{
	struct zfcp_adapter *adapter = FUNC2(cdev);

	if (!adapter)
		return 0;

	FUNC5(adapter, clear);
	FUNC6(adapter, ZFCP_STATUS_COMMON_RUNNING);
	FUNC4(adapter, ZFCP_STATUS_COMMON_ERP_FAILED,
				tag);

	/*
	 * We want to scan ports here, with some random backoff and without
	 * rate limit. Recovery has already scheduled a port scan for us,
	 * but with both random delay and rate limit. Nevertheless we get
	 * what we want here by flushing the scheduled work after sleeping
	 * an equivalent random time.
	 * Let the port scan random delay elapse first. If recovery finishes
	 * up to that point in time, that would be perfect for both recovery
	 * and port scan. If not, i.e. recovery takes ages, there was no
	 * point in waiting a random delay on top of the time consumed by
	 * recovery.
	 */
	FUNC1(FUNC8());
	FUNC7(adapter);
	FUNC0(&adapter->scan_work);

	FUNC3(adapter);

	return 0;
}