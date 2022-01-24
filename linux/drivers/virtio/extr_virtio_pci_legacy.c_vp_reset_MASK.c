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
struct virtio_pci_device {scalar_t__ ioaddr; } ;
struct virtio_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ VIRTIO_PCI_STATUS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct virtio_pci_device* FUNC2 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_device*) ; 

__attribute__((used)) static void FUNC4(struct virtio_device *vdev)
{
	struct virtio_pci_device *vp_dev = FUNC2(vdev);
	/* 0 status means a reset. */
	FUNC1(0, vp_dev->ioaddr + VIRTIO_PCI_STATUS);
	/* Flush out the status write, and flush in device writes,
	 * including MSi-X interrupts, if any. */
	FUNC0(vp_dev->ioaddr + VIRTIO_PCI_STATUS);
	/* Flush pending VQ/configuration callbacks. */
	FUNC3(vdev);
}