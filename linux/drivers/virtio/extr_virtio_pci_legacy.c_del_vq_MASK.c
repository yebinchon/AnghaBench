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
struct virtqueue {int /*<<< orphan*/  index; int /*<<< orphan*/  vdev; } ;
struct virtio_pci_vq_info {struct virtqueue* vq; } ;
struct virtio_pci_device {scalar_t__ ioaddr; scalar_t__ msix_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_MSI_NO_VECTOR ; 
 scalar_t__ VIRTIO_MSI_QUEUE_VECTOR ; 
 scalar_t__ VIRTIO_PCI_ISR ; 
 scalar_t__ VIRTIO_PCI_QUEUE_PFN ; 
 scalar_t__ VIRTIO_PCI_QUEUE_SEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct virtio_pci_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct virtqueue*) ; 

__attribute__((used)) static void FUNC5(struct virtio_pci_vq_info *info)
{
	struct virtqueue *vq = info->vq;
	struct virtio_pci_device *vp_dev = FUNC3(vq->vdev);

	FUNC1(vq->index, vp_dev->ioaddr + VIRTIO_PCI_QUEUE_SEL);

	if (vp_dev->msix_enabled) {
		FUNC1(VIRTIO_MSI_NO_VECTOR,
			  vp_dev->ioaddr + VIRTIO_MSI_QUEUE_VECTOR);
		/* Flush the write out to device */
		FUNC0(vp_dev->ioaddr + VIRTIO_PCI_ISR);
	}

	/* Select and deactivate the queue */
	FUNC2(0, vp_dev->ioaddr + VIRTIO_PCI_QUEUE_PFN);

	FUNC4(vq);
}