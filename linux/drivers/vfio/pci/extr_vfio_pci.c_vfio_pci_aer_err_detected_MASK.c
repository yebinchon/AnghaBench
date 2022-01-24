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
struct vfio_pci_device {int /*<<< orphan*/  igate; scalar_t__ err_trigger; } ;
struct vfio_device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  int /*<<< orphan*/  pci_channel_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_CAN_RECOVER ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vfio_pci_device* FUNC3 (struct vfio_device*) ; 
 struct vfio_device* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vfio_device*) ; 

__attribute__((used)) static pci_ers_result_t FUNC6(struct pci_dev *pdev,
						  pci_channel_state_t state)
{
	struct vfio_pci_device *vdev;
	struct vfio_device *device;

	device = FUNC4(&pdev->dev);
	if (device == NULL)
		return PCI_ERS_RESULT_DISCONNECT;

	vdev = FUNC3(device);
	if (vdev == NULL) {
		FUNC5(device);
		return PCI_ERS_RESULT_DISCONNECT;
	}

	FUNC1(&vdev->igate);

	if (vdev->err_trigger)
		FUNC0(vdev->err_trigger, 1);

	FUNC2(&vdev->igate);

	FUNC5(device);

	return PCI_ERS_RESULT_CAN_RECOVER;
}