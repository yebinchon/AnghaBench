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
struct vfio_pci_device {TYPE_1__* ctx; scalar_t__ num_ctx; int /*<<< orphan*/  irq_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  unmask; } ;

/* Variables and functions */
 int /*<<< orphan*/  VFIO_PCI_NUM_IRQS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct vfio_pci_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct vfio_pci_device *vdev)
{
	FUNC2(&vdev->ctx[0].unmask);
	FUNC2(&vdev->ctx[0].mask);
	FUNC1(vdev, -1);
	vdev->irq_type = VFIO_PCI_NUM_IRQS;
	vdev->num_ctx = 0;
	FUNC0(vdev->ctx);
}