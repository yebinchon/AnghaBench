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
struct vfio_pci_device {TYPE_1__* ctx; int /*<<< orphan*/  virq_disabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  trigger; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct vfio_pci_device*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void *opaque, void *unused)
{
	struct vfio_pci_device *vdev = opaque;

	if (FUNC2(FUNC1(vdev) && !vdev->virq_disabled))
		FUNC0(vdev->ctx[0].trigger, 1);
}