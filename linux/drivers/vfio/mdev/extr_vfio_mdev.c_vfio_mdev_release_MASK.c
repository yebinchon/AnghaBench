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
struct mdev_parent {TYPE_1__* ops; } ;
struct mdev_device {struct mdev_parent* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release ) (struct mdev_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  (*) (struct mdev_device*)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mdev_device*) ; 

__attribute__((used)) static void FUNC3(void *device_data)
{
	struct mdev_device *mdev = device_data;
	struct mdev_parent *parent = mdev->parent;

	if (FUNC0(parent->ops->release))
		parent->ops->release(mdev);

	FUNC1(THIS_MODULE);
}