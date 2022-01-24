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
struct vhci_hcd {struct vhci* vhci; struct vhci_device* vdev; } ;
struct TYPE_2__ {scalar_t__ status; int /*<<< orphan*/  lock; } ;
struct vhci_device {TYPE_1__ ud; } ;
struct vhci {int /*<<< orphan*/  lock; } ;
typedef  size_t __u32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  VDEV_EVENT_DOWN ; 
 scalar_t__ VDEV_ST_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct vhci_hcd *vhci_hcd, __u32 rhport)
{
	struct vhci_device *vdev = &vhci_hcd->vdev[rhport];
	struct vhci *vhci = vhci_hcd->vhci;
	unsigned long flags;

	FUNC5("enter\n");

	/* lock */
	FUNC2(&vhci->lock, flags);
	FUNC1(&vdev->ud.lock);

	if (vdev->ud.status == VDEV_ST_NULL) {
		FUNC0("not connected %d\n", vdev->ud.status);

		/* unlock */
		FUNC3(&vdev->ud.lock);
		FUNC4(&vhci->lock, flags);

		return -EINVAL;
	}

	/* unlock */
	FUNC3(&vdev->ud.lock);
	FUNC4(&vhci->lock, flags);

	FUNC6(&vdev->ud, VDEV_EVENT_DOWN);

	return 0;
}