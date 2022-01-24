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
struct virtio_pci_device {TYPE_1__** vqs; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  per_vq_vectors; } ;
struct virtio_device {int dummy; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {scalar_t__ msix_vector; } ;

/* Variables and functions */
 scalar_t__ VIRTIO_MSI_NO_VECTOR ; 
 struct cpumask const* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct virtio_pci_device* FUNC1 (struct virtio_device*) ; 

const struct cpumask *FUNC2(struct virtio_device *vdev, int index)
{
	struct virtio_pci_device *vp_dev = FUNC1(vdev);

	if (!vp_dev->per_vq_vectors ||
	    vp_dev->vqs[index]->msix_vector == VIRTIO_MSI_NO_VECTOR)
		return NULL;

	return FUNC0(vp_dev->pci_dev,
				    vp_dev->vqs[index]->msix_vector);
}