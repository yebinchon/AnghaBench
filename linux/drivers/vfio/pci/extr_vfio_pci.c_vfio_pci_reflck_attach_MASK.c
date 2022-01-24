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
struct vfio_pci_device {int /*<<< orphan*/  reflck; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  slot; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reflck_lock ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  vfio_pci_reflck_find ; 

__attribute__((used)) static int FUNC7(struct vfio_pci_device *vdev)
{
	bool slot = !FUNC4(vdev->pdev->slot);

	FUNC1(&reflck_lock);

	if (FUNC3(vdev->pdev->bus) ||
	    FUNC5(vdev->pdev, vfio_pci_reflck_find,
					  &vdev->reflck, slot) <= 0)
		vdev->reflck = FUNC6();

	FUNC2(&reflck_lock);

	return FUNC0(vdev->reflck);
}