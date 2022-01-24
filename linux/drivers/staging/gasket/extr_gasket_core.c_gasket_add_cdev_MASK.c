#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct module {int dummy; } ;
struct TYPE_5__ {struct module* owner; } ;
struct gasket_cdev_info {int cdev_added; TYPE_1__* gasket_dev_ptr; int /*<<< orphan*/  devt; TYPE_2__ cdev; } ;
struct file_operations {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct file_operations const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(struct gasket_cdev_info *dev_info,
			   const struct file_operations *file_ops,
			   struct module *owner)
{
	int ret;

	FUNC1(&dev_info->cdev, file_ops);
	dev_info->cdev.owner = owner;
	ret = FUNC0(&dev_info->cdev, dev_info->devt, 1);
	if (ret) {
		FUNC2(dev_info->gasket_dev_ptr->dev,
			"cannot add char device [ret=%d]\n", ret);
		return ret;
	}
	dev_info->cdev_added = 1;

	return 0;
}