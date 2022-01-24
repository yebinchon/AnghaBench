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
struct vfio_pci_device {scalar_t__ refcnt; } ;
struct vfio_devices {scalar_t__ cur_index; scalar_t__ max_index; struct vfio_device** devices; } ;
struct vfio_device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/ * FUNC0 (struct pci_dev*) ; 
 struct vfio_pci_device* FUNC1 (struct vfio_device*) ; 
 struct vfio_device* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vfio_device*) ; 
 int /*<<< orphan*/  vfio_pci_driver ; 

__attribute__((used)) static int FUNC4(struct pci_dev *pdev, void *data)
{
	struct vfio_devices *devs = data;
	struct vfio_device *device;
	struct vfio_pci_device *vdev;

	if (devs->cur_index == devs->max_index)
		return -ENOSPC;

	device = FUNC2(&pdev->dev);
	if (!device)
		return -EINVAL;

	if (FUNC0(pdev) != &vfio_pci_driver) {
		FUNC3(device);
		return -EBUSY;
	}

	vdev = FUNC1(device);

	/* Fault if the device is not unused */
	if (vdev->refcnt) {
		FUNC3(device);
		return -EBUSY;
	}

	devs->devices[devs->cur_index++] = device;
	return 0;
}