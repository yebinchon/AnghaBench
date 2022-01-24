#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vfio_group {scalar_t__ noiommu; int /*<<< orphan*/  container_users; TYPE_1__* container; } ;
struct vfio_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  device_data; TYPE_2__* ops; } ;
struct file {int f_mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  comm; } ;
struct TYPE_6__ {int (* open ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* release ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  iommu_driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_RAWIO ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPERM ; 
 int FMODE_LSEEK ; 
 int FMODE_PREAD ; 
 int FMODE_PWRITE ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC1 (struct file*) ; 
 struct file* FUNC2 (char*,int /*<<< orphan*/ *,struct vfio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct file*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  vfio_device_fops ; 
 struct vfio_device* FUNC14 (struct vfio_group*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct vfio_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct vfio_group*) ; 

__attribute__((used)) static int FUNC17(struct vfio_group *group, char *buf)
{
	struct vfio_device *device;
	struct file *filep;
	int ret;

	if (0 == FUNC4(&group->container_users) ||
	    !group->container->iommu_driver || !FUNC16(group))
		return -EINVAL;

	if (group->noiommu && !FUNC5(CAP_SYS_RAWIO))
		return -EPERM;

	device = FUNC14(group, buf);
	if (!device)
		return -ENODEV;

	ret = device->ops->open(device->device_data);
	if (ret) {
		FUNC15(device);
		return ret;
	}

	/*
	 * We can't use anon_inode_getfd() because we need to modify
	 * the f_mode flags directly to allow more than just ioctls
	 */
	ret = FUNC8(O_CLOEXEC);
	if (ret < 0) {
		device->ops->release(device->device_data);
		FUNC15(device);
		return ret;
	}

	filep = FUNC2("[vfio-device]", &vfio_device_fops,
				   device, O_RDWR);
	if (FUNC0(filep)) {
		FUNC9(ret);
		ret = FUNC1(filep);
		device->ops->release(device->device_data);
		FUNC15(device);
		return ret;
	}

	/*
	 * TODO: add an anon_inode interface to do this.
	 * Appears to be missing by lack of need rather than
	 * explicitly prevented.  Now there's need.
	 */
	filep->f_mode |= (FMODE_LSEEK | FMODE_PREAD | FMODE_PWRITE);

	FUNC3(&group->container_users);

	FUNC7(ret, filep);

	if (group->noiommu)
		FUNC6(device->dev, "vfio-noiommu device opened by user "
			 "(%s:%d)\n", current->comm, FUNC13(current));

	return ret;
}