#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct ccw_device {TYPE_1__ dev; } ;
struct TYPE_7__ {int (* alloc ) (struct ccw_device*) ;int (* set ) (struct ccw_device*,int) ;int /*<<< orphan*/  (* free ) (struct ccw_device*) ;int /*<<< orphan*/  attr_group; int /*<<< orphan*/  (* reset ) (struct ccw_device*) ;} ;

/* Variables and functions */
 TYPE_5__* cmbops ; 
 scalar_t__ FUNC0 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ccw_device*) ; 
 int FUNC6 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ccw_device*) ; 
 int FUNC9 (struct ccw_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ccw_device*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC13(struct ccw_device *cdev)
{
	int ret = 0;

	FUNC1(&cdev->dev);
	if (FUNC0(cdev)) {
		cmbops->reset(cdev);
		goto out_unlock;
	}
	FUNC3(&cdev->dev);
	ret = cmbops->alloc(cdev);
	if (ret)
		goto out;
	cmbops->reset(cdev);
	ret = FUNC11(&cdev->dev.kobj, cmbops->attr_group);
	if (ret) {
		cmbops->free(cdev);
		goto out;
	}
	ret = cmbops->set(cdev, 2);
	if (ret) {
		FUNC12(&cdev->dev.kobj, cmbops->attr_group);
		cmbops->free(cdev);
	}
out:
	if (ret)
		FUNC4(&cdev->dev);
out_unlock:
	FUNC2(&cdev->dev);
	return ret;
}