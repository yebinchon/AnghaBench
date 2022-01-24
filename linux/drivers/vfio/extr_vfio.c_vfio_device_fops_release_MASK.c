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
struct vfio_device {int /*<<< orphan*/  group; int /*<<< orphan*/  device_data; TYPE_1__* ops; } ;
struct inode {int dummy; } ;
struct file {struct vfio_device* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vfio_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *filep)
{
	struct vfio_device *device = filep->private_data;

	device->ops->release(device->device_data);

	FUNC2(device->group);

	FUNC1(device);

	return 0;
}