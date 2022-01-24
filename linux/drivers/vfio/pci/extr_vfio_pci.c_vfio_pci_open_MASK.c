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
struct vfio_pci_device {TYPE_1__* reflck; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vfio_pci_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *device_data)
{
	struct vfio_pci_device *vdev = device_data;
	int ret = 0;

	if (!FUNC3(THIS_MODULE))
		return -ENODEV;

	FUNC1(&vdev->reflck->lock);

	if (!vdev->refcnt) {
		ret = FUNC4(vdev);
		if (ret)
			goto error;

		FUNC5(vdev->pdev);
	}
	vdev->refcnt++;
error:
	FUNC2(&vdev->reflck->lock);
	if (ret)
		FUNC0(THIS_MODULE);
	return ret;
}