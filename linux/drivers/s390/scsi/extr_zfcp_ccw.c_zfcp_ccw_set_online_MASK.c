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
struct zfcp_adapter {int /*<<< orphan*/  scan_work; scalar_t__ req_no; int /*<<< orphan*/  req_list; int /*<<< orphan*/  ref; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct zfcp_adapter*) ; 
 int FUNC2 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct zfcp_adapter* FUNC6 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ccw_device*,int /*<<< orphan*/ ,char*) ; 
 struct zfcp_adapter* FUNC8 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct ccw_device *cdev)
{
	struct zfcp_adapter *adapter = FUNC8(cdev);

	if (!adapter) {
		adapter = FUNC6(cdev);

		if (FUNC1(adapter)) {
			FUNC3(&cdev->dev,
				"Setting up data structures for the "
				"FCP adapter failed\n");
			return FUNC2(adapter);
		}
		FUNC5(&adapter->ref);
	}

	/* initialize request counter */
	FUNC0(!FUNC11(adapter->req_list));
	adapter->req_no = 0;

	FUNC7(cdev, 0, "ccsonl1");

	/*
	 * We want to scan ports here, always, with some random delay and
	 * without rate limit - basically what zfcp_ccw_activate() has
	 * achieved for us. Not quite! That port scan depended on
	 * !no_auto_port_rescan. So let's cover the no_auto_port_rescan
	 * case here to make sure a port scan is done unconditionally.
	 * Since zfcp_ccw_activate() has waited the desired random time,
	 * we can immediately schedule and flush a port scan for the
	 * remaining cases.
	 */
	FUNC10(adapter);
	FUNC4(&adapter->scan_work);
	FUNC9(adapter);
	return 0;
}