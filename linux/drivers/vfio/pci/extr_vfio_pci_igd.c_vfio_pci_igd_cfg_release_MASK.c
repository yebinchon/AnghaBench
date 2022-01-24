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
struct vfio_pci_region {struct pci_dev* data; } ;
struct vfio_pci_device {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC1(struct vfio_pci_device *vdev,
				     struct vfio_pci_region *region)
{
	struct pci_dev *pdev = region->data;

	FUNC0(pdev);
}