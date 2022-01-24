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
struct virtio_pci_device {int /*<<< orphan*/  pci_dev; } ;
struct virtio_device {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 struct virtio_pci_device* FUNC1 (struct virtio_device*) ; 

const char *FUNC2(struct virtio_device *vdev)
{
	struct virtio_pci_device *vp_dev = FUNC1(vdev);

	return FUNC0(vp_dev->pci_dev);
}