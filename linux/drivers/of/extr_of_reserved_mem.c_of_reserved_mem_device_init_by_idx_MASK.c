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
struct rmem_assigned_device {int /*<<< orphan*/  list; struct reserved_mem* rmem; struct device* dev; } ;
struct reserved_mem {int /*<<< orphan*/  name; TYPE_1__* ops; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* device_init ) (struct reserved_mem*,struct device*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct reserved_mem* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rmem_assigned_device*) ; 
 struct rmem_assigned_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 struct device_node* FUNC9 (struct device_node*,char*,int) ; 
 int /*<<< orphan*/  of_rmem_assigned_device_list ; 
 int /*<<< orphan*/  of_rmem_assigned_device_mutex ; 
 int FUNC10 (struct reserved_mem*,struct device*) ; 

int FUNC11(struct device *dev,
				       struct device_node *np, int idx)
{
	struct rmem_assigned_device *rd;
	struct device_node *target;
	struct reserved_mem *rmem;
	int ret;

	if (!np || !dev)
		return -EINVAL;

	target = FUNC9(np, "memory-region", idx);
	if (!target)
		return -ENODEV;

	if (!FUNC7(target)) {
		FUNC8(target);
		return 0;
	}

	rmem = FUNC0(target);
	FUNC8(target);

	if (!rmem || !rmem->ops || !rmem->ops->device_init)
		return -EINVAL;

	rd = FUNC3(sizeof(struct rmem_assigned_device), GFP_KERNEL);
	if (!rd)
		return -ENOMEM;

	ret = rmem->ops->device_init(rmem, dev);
	if (ret == 0) {
		rd->dev = dev;
		rd->rmem = rmem;

		FUNC5(&of_rmem_assigned_device_mutex);
		FUNC4(&rd->list, &of_rmem_assigned_device_list);
		FUNC6(&of_rmem_assigned_device_mutex);

		FUNC1(dev, "assigned reserved memory node %s\n", rmem->name);
	} else {
		FUNC2(rd);
	}

	return ret;
}