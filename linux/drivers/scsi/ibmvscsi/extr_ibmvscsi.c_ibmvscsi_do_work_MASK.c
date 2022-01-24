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
struct ibmvscsi_host_data {int action; TYPE_1__* host; int /*<<< orphan*/  dev; int /*<<< orphan*/  request_limit; int /*<<< orphan*/  queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
#define  IBMVSCSI_HOST_ACTION_NONE 131 
#define  IBMVSCSI_HOST_ACTION_REENABLE 130 
#define  IBMVSCSI_HOST_ACTION_RESET 129 
#define  IBMVSCSI_HOST_ACTION_UNBLOCK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct ibmvscsi_host_data*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct ibmvscsi_host_data*) ; 
 int FUNC4 (struct ibmvscsi_host_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct ibmvscsi_host_data *hostdata)
{
	unsigned long flags;
	int rc;
	char *action = "reset";

	FUNC6(hostdata->host->host_lock, flags);
	switch (hostdata->action) {
	case IBMVSCSI_HOST_ACTION_UNBLOCK:
		rc = 0;
		break;
	case IBMVSCSI_HOST_ACTION_RESET:
		FUNC7(hostdata->host->host_lock, flags);
		rc = FUNC3(&hostdata->queue, hostdata);
		FUNC6(hostdata->host->host_lock, flags);
		if (!rc)
			rc = FUNC4(hostdata, 0xC001000000000000LL, 0);
		FUNC9(FUNC8(hostdata->dev));
		break;
	case IBMVSCSI_HOST_ACTION_REENABLE:
		action = "enable";
		FUNC7(hostdata->host->host_lock, flags);
		rc = FUNC2(&hostdata->queue, hostdata);
		FUNC6(hostdata->host->host_lock, flags);
		if (!rc)
			rc = FUNC4(hostdata, 0xC001000000000000LL, 0);
		break;
	case IBMVSCSI_HOST_ACTION_NONE:
	default:
		FUNC7(hostdata->host->host_lock, flags);
		return;
	}

	hostdata->action = IBMVSCSI_HOST_ACTION_NONE;

	if (rc) {
		FUNC0(&hostdata->request_limit, -1);
		FUNC1(hostdata->dev, "error after %s\n", action);
	}
	FUNC7(hostdata->host->host_lock, flags);

	FUNC5(hostdata->host);
}