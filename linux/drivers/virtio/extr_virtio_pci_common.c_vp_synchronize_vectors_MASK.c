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
struct virtio_pci_device {int msix_vectors; TYPE_1__* pci_dev; scalar_t__ intx_enabled; } ;
struct virtio_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct virtio_pci_device* FUNC2 (struct virtio_device*) ; 

void FUNC3(struct virtio_device *vdev)
{
	struct virtio_pci_device *vp_dev = FUNC2(vdev);
	int i;

	if (vp_dev->intx_enabled)
		FUNC1(vp_dev->pci_dev->irq);

	for (i = 0; i < vp_dev->msix_vectors; ++i)
		FUNC1(FUNC0(vp_dev->pci_dev, i));
}