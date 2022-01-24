#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ss_family; } ;
struct TYPE_6__ {TYPE_2__ local_addr; } ;
struct cxgbit_np {TYPE_3__ com; } ;
struct TYPE_4__ {int /*<<< orphan*/  tids; } ;
struct cxgbit_device {TYPE_1__ lldi; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int AF_INET ; 
 int /*<<< orphan*/  CDEV_STATE_UP ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int,struct cxgbit_np*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct cxgbit_device*,int,struct cxgbit_np*) ; 
 int FUNC3 (struct cxgbit_device*,int,struct cxgbit_np*) ; 
 int /*<<< orphan*/  FUNC4 (struct cxgbit_device*,struct cxgbit_np*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cxgbit_device*,struct cxgbit_np*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct cxgbit_device *cdev, struct cxgbit_np *cnp)
{
	int stid, ret;
	int ss_family = cnp->com.local_addr.ss_family;

	if (!FUNC6(CDEV_STATE_UP, &cdev->flags))
		return -EINVAL;

	stid = FUNC0(cdev->lldi.tids, ss_family, cnp);
	if (stid < 0)
		return -EINVAL;

	if (!FUNC4(cdev, cnp, stid)) {
		FUNC1(cdev->lldi.tids, stid, ss_family);
		return -EINVAL;
	}

	if (ss_family == AF_INET)
		ret = FUNC2(cdev, stid, cnp);
	else
		ret = FUNC3(cdev, stid, cnp);

	if (ret) {
		if (ret != -ETIMEDOUT)
			FUNC1(cdev->lldi.tids, stid,
					ss_family);
		FUNC5(cdev, cnp);
		return ret;
	}
	return ret;
}