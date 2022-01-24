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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct virtio_pci_device {scalar_t__ ioaddr; TYPE_1__ vdev; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct virtio_pci_device* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct virtio_pci_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct virtio_pci_device*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pci_dev)
{
	struct virtio_pci_device *vp_dev = FUNC3(pci_dev);
	struct device *dev = FUNC0(&vp_dev->vdev.dev);

	FUNC2(pci_dev);

	FUNC5(&vp_dev->vdev);

	if (vp_dev->ioaddr)
		FUNC6(vp_dev);
	else
		FUNC7(vp_dev);

	FUNC1(pci_dev);
	FUNC4(dev);
}