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
struct vfio_pci_reflck {int dummy; } ;
struct vfio_pci_device {struct vfio_pci_reflck* reflck; } ;
struct vfio_device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct pci_dev*) ; 
 struct vfio_pci_device* FUNC1 (struct vfio_device*) ; 
 struct vfio_device* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vfio_device*) ; 
 int /*<<< orphan*/  vfio_pci_driver ; 
 int /*<<< orphan*/  FUNC4 (struct vfio_pci_reflck*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev, void *data)
{
	struct vfio_pci_reflck **preflck = data;
	struct vfio_device *device;
	struct vfio_pci_device *vdev;

	device = FUNC2(&pdev->dev);
	if (!device)
		return 0;

	if (FUNC0(pdev) != &vfio_pci_driver) {
		FUNC3(device);
		return 0;
	}

	vdev = FUNC1(device);

	if (vdev->reflck) {
		FUNC4(vdev->reflck);
		*preflck = vdev->reflck;
		FUNC3(device);
		return 1;
	}

	FUNC3(device);
	return 0;
}