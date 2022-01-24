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
struct vfio_group {int dummy; } ;
struct vfio_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct vfio_device* FUNC0 (struct vfio_group*,struct device*) ; 
 struct vfio_group* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct vfio_group*) ; 

struct vfio_device *FUNC3(struct device *dev)
{
	struct vfio_group *group;
	struct vfio_device *device;

	group = FUNC1(dev);
	if (!group)
		return NULL;

	device = FUNC0(group, dev);
	FUNC2(group);

	return device;
}