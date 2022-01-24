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
struct vfio_group {int /*<<< orphan*/  device_lock; int /*<<< orphan*/  device_list; } ;
struct vfio_device_ops {int dummy; } ;
struct vfio_device {int /*<<< orphan*/  group_next; void* device_data; struct vfio_device_ops const* ops; struct vfio_group* group; struct device* dev; int /*<<< orphan*/  kref; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct vfio_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct vfio_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vfio_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vfio_group*) ; 

__attribute__((used)) static
struct vfio_device *FUNC8(struct vfio_group *group,
					     struct device *dev,
					     const struct vfio_device_ops *ops,
					     void *device_data)
{
	struct vfio_device *device;

	device = FUNC3(sizeof(*device), GFP_KERNEL);
	if (!device)
		return FUNC0(-ENOMEM);

	FUNC2(&device->kref);
	device->dev = dev;
	device->group = group;
	device->ops = ops;
	device->device_data = device_data;
	FUNC1(dev, device);

	/* No need to get group_lock, caller has group reference */
	FUNC7(group);

	FUNC5(&group->device_lock);
	FUNC4(&device->group_next, &group->device_list);
	FUNC6(&group->device_lock);

	return device;
}