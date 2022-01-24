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
struct zfcp_adapter {int /*<<< orphan*/  status; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  CIO_BOXED 131 
#define  CIO_GONE 130 
#define  CIO_NO_PATH 129 
#define  CIO_OPER 128 
 int ZFCP_STATUS_ADAPTER_SUSPENDED ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_RUNNING ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct zfcp_adapter* FUNC3 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ccw_device *cdev, int event)
{
	struct zfcp_adapter *adapter = FUNC3(cdev);

	if (!adapter)
		return 1;

	switch (event) {
	case CIO_GONE:
		if (FUNC0(&adapter->status) &
		    ZFCP_STATUS_ADAPTER_SUSPENDED) { /* notification ignore */
			FUNC5("ccnigo1", adapter);
			break;
		}
		FUNC2(&cdev->dev, "The FCP device has been detached\n");
		FUNC7(adapter, 0, "ccnoti1");
		break;
	case CIO_NO_PATH:
		FUNC2(&cdev->dev,
			 "The CHPID for the FCP device is offline\n");
		FUNC7(adapter, 0, "ccnoti2");
		break;
	case CIO_OPER:
		if (FUNC0(&adapter->status) &
		    ZFCP_STATUS_ADAPTER_SUSPENDED) { /* notification ignore */
			FUNC5("ccniop1", adapter);
			break;
		}
		FUNC1(&cdev->dev, "The FCP device is operational again\n");
		FUNC8(adapter,
					    ZFCP_STATUS_COMMON_RUNNING);
		FUNC6(adapter, ZFCP_STATUS_COMMON_ERP_FAILED,
					"ccnoti4");
		break;
	case CIO_BOXED:
		FUNC2(&cdev->dev, "The FCP device did not respond within "
				     "the specified time\n");
		FUNC7(adapter, 0, "ccnoti5");
		break;
	}

	FUNC4(adapter);
	return 1;
}