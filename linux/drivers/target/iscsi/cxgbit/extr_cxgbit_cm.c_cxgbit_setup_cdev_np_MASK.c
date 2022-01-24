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
struct TYPE_2__ {struct cxgbit_device* cdev; } ;
struct cxgbit_np {TYPE_1__ com; } ;
struct cxgbit_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cxgbit_device*,struct cxgbit_np*) ; 
 int /*<<< orphan*/  cdev_list_lock ; 
 struct cxgbit_device* FUNC1 (struct cxgbit_np*) ; 
 scalar_t__ FUNC2 (struct cxgbit_device*,struct cxgbit_np*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct cxgbit_np *cnp)
{
	struct cxgbit_device *cdev;
	int ret = -1;

	FUNC3(&cdev_list_lock);
	cdev = FUNC1(cnp);
	if (!cdev)
		goto out;

	if (FUNC2(cdev, cnp) >= 0)
		goto out;

	if (FUNC0(cdev, cnp))
		goto out;

	cnp->com.cdev = cdev;
	ret = 0;
out:
	FUNC4(&cdev_list_lock);
	return ret;
}