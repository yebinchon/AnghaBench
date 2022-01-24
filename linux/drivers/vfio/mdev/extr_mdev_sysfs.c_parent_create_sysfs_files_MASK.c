#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mdev_parent {int /*<<< orphan*/  mdev_types_kset; TYPE_1__* ops; TYPE_2__* dev; int /*<<< orphan*/  type_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_attr_groups; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mdev_parent*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(struct mdev_parent *parent)
{
	int ret;

	parent->mdev_types_kset = FUNC2("mdev_supported_types",
					       NULL, &parent->dev->kobj);

	if (!parent->mdev_types_kset)
		return -ENOMEM;

	FUNC0(&parent->type_list);

	ret = FUNC4(&parent->dev->kobj,
				  parent->ops->dev_attr_groups);
	if (ret)
		goto create_err;

	ret = FUNC1(parent);
	if (ret)
		FUNC5(&parent->dev->kobj,
				    parent->ops->dev_attr_groups);
	else
		return ret;

create_err:
	FUNC3(parent->mdev_types_kset);
	return ret;
}