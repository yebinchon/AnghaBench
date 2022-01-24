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
struct vfio_pci_device {int /*<<< orphan*/  igate; scalar_t__ req_trigger; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,char*) ; 

__attribute__((used)) static void FUNC5(void *device_data, unsigned int count)
{
	struct vfio_pci_device *vdev = device_data;
	struct pci_dev *pdev = vdev->pdev;

	FUNC1(&vdev->igate);

	if (vdev->req_trigger) {
		if (!(count % 10))
			FUNC3(pdev,
				"Relaying device request to user (#%u)\n",
				count);
		FUNC0(vdev->req_trigger, 1);
	} else if (count == 0) {
		FUNC4(pdev,
			"No device request channel registered, blocked until released by user\n");
	}

	FUNC2(&vdev->igate);
}