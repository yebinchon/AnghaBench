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
struct vfio_group {int /*<<< orphan*/  device_lock; } ;
struct vfio_device {int /*<<< orphan*/  kref; struct vfio_group* group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfio_device_release ; 
 int /*<<< orphan*/  FUNC1 (struct vfio_group*) ; 

void FUNC2(struct vfio_device *device)
{
	struct vfio_group *group = device->group;
	FUNC0(&device->kref, vfio_device_release, &group->device_lock);
	FUNC1(group);
}