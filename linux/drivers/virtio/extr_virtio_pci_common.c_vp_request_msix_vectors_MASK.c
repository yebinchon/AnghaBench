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
struct virtio_pci_device {int msix_vectors; int msix_enabled; unsigned int msix_used_vectors; unsigned int (* config_vector ) (struct virtio_pci_device*,unsigned int) ;int /*<<< orphan*/ * msix_names; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/ * msix_affinity_masks; TYPE_1__ vdev; } ;
struct virtio_device {int dummy; } ;
struct irq_affinity {int /*<<< orphan*/  pre_vectors; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PCI_IRQ_AFFINITY ; 
 unsigned int PCI_IRQ_MSIX ; 
 unsigned int VIRTIO_MSI_NO_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,unsigned int,struct irq_affinity*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct virtio_pci_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 unsigned int FUNC8 (struct virtio_pci_device*,unsigned int) ; 
 struct virtio_pci_device* FUNC9 (struct virtio_device*) ; 
 int /*<<< orphan*/  vp_config_changed ; 
 int /*<<< orphan*/  vp_vring_interrupt ; 

__attribute__((used)) static int FUNC10(struct virtio_device *vdev, int nvectors,
				   bool per_vq_vectors, struct irq_affinity *desc)
{
	struct virtio_pci_device *vp_dev = FUNC9(vdev);
	const char *name = FUNC1(&vp_dev->vdev.dev);
	unsigned flags = PCI_IRQ_MSIX;
	unsigned i, v;
	int err = -ENOMEM;

	vp_dev->msix_vectors = nvectors;

	vp_dev->msix_names = FUNC3(nvectors,
					   sizeof(*vp_dev->msix_names),
					   GFP_KERNEL);
	if (!vp_dev->msix_names)
		goto error;
	vp_dev->msix_affinity_masks
		= FUNC2(nvectors, sizeof(*vp_dev->msix_affinity_masks),
			  GFP_KERNEL);
	if (!vp_dev->msix_affinity_masks)
		goto error;
	for (i = 0; i < nvectors; ++i)
		if (!FUNC0(&vp_dev->msix_affinity_masks[i],
					GFP_KERNEL))
			goto error;

	if (desc) {
		flags |= PCI_IRQ_AFFINITY;
		desc->pre_vectors++; /* virtio config vector */
	}

	err = FUNC4(vp_dev->pci_dev, nvectors,
					     nvectors, flags, desc);
	if (err < 0)
		goto error;
	vp_dev->msix_enabled = 1;

	/* Set the vector used for configuration */
	v = vp_dev->msix_used_vectors;
	FUNC7(vp_dev->msix_names[v], sizeof *vp_dev->msix_names,
		 "%s-config", name);
	err = FUNC6(FUNC5(vp_dev->pci_dev, v),
			  vp_config_changed, 0, vp_dev->msix_names[v],
			  vp_dev);
	if (err)
		goto error;
	++vp_dev->msix_used_vectors;

	v = vp_dev->config_vector(vp_dev, v);
	/* Verify we had enough resources to assign the vector */
	if (v == VIRTIO_MSI_NO_VECTOR) {
		err = -EBUSY;
		goto error;
	}

	if (!per_vq_vectors) {
		/* Shared vector for all VQs */
		v = vp_dev->msix_used_vectors;
		FUNC7(vp_dev->msix_names[v], sizeof *vp_dev->msix_names,
			 "%s-virtqueues", name);
		err = FUNC6(FUNC5(vp_dev->pci_dev, v),
				  vp_vring_interrupt, 0, vp_dev->msix_names[v],
				  vp_dev);
		if (err)
			goto error;
		++vp_dev->msix_used_vectors;
	}
	return 0;
error:
	return err;
}