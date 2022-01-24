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
struct mdev_device {int dummy; } ;
struct ap_matrix_mdev {int /*<<< orphan*/  node; scalar_t__ kvm; } ;
struct TYPE_2__ {int /*<<< orphan*/  available_instances; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ap_matrix_mdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* matrix_dev ; 
 struct ap_matrix_mdev* FUNC3 (struct mdev_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mdev_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mdev_device*) ; 

__attribute__((used)) static int FUNC8(struct mdev_device *mdev)
{
	struct ap_matrix_mdev *matrix_mdev = FUNC3(mdev);

	if (matrix_mdev->kvm)
		return -EBUSY;

	FUNC5(&matrix_dev->lock);
	FUNC7(mdev);
	FUNC2(&matrix_mdev->node);
	FUNC6(&matrix_dev->lock);

	FUNC1(matrix_mdev);
	FUNC4(mdev, NULL);
	FUNC0(&matrix_dev->available_instances);

	return 0;
}