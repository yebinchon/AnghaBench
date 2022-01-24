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
typedef  scalar_t__ u32 ;
struct virtio_pci_device {scalar_t__ ioaddr; } ;
struct virtio_device {scalar_t__ features; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ VIRTIO_PCI_GUEST_FEATURES ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 struct virtio_pci_device* FUNC2 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_device*) ; 

__attribute__((used)) static int FUNC4(struct virtio_device *vdev)
{
	struct virtio_pci_device *vp_dev = FUNC2(vdev);

	/* Give virtio_ring a chance to accept features. */
	FUNC3(vdev);

	/* Make sure we don't have any features > 32 bits! */
	FUNC0((u32)vdev->features != vdev->features);

	/* We only support 32 feature bits. */
	FUNC1(vdev->features, vp_dev->ioaddr + VIRTIO_PCI_GUEST_FEATURES);

	return 0;
}