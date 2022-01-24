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
struct vhci_device {int /*<<< orphan*/  priv_lock; int /*<<< orphan*/  priv_rx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct vhci_device *vdev)
{
	int empty = 0;
	unsigned long flags;

	FUNC1(&vdev->priv_lock, flags);
	empty = FUNC0(&vdev->priv_rx);
	FUNC2(&vdev->priv_lock, flags);

	return empty;
}