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
struct mdev_type {int dummy; } ;
struct mdev_parent {TYPE_1__* ops; int /*<<< orphan*/  unreg_sem; } ;
struct mdev_device {int /*<<< orphan*/  dev; struct mdev_parent* parent; int /*<<< orphan*/  type_kobj; } ;
struct TYPE_2__ {int (* remove ) (struct mdev_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mdev_parent*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mdev_type*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mdev_device*) ; 
 struct mdev_type* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct mdev_device *mdev)
{
	struct mdev_parent *parent;
	struct mdev_type *type;
	int ret;

	type = FUNC7(mdev->type_kobj);
	FUNC4(&mdev->dev, type);
	FUNC1(&mdev->dev);
	parent = mdev->parent;
	FUNC2(&parent->unreg_sem);
	ret = parent->ops->remove(mdev);
	if (ret)
		FUNC0(&mdev->dev, "Remove failed: err=%d\n", ret);

	/* Balances with device_initialize() */
	FUNC5(&mdev->dev);
	FUNC3(parent);
}