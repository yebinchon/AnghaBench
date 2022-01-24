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
struct vfio_pci_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vfio_pci_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vfio_pci_device*,int /*<<< orphan*/ *) ; 

void FUNC2(struct vfio_pci_device *vdev)
{
	if (FUNC0(vdev, NULL) > 0)
		FUNC1(vdev, NULL);
}