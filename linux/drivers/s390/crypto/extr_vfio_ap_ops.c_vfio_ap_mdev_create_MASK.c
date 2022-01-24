#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mdev_device {int dummy; } ;
struct kobject {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  hook; } ;
struct ap_matrix_mdev {int /*<<< orphan*/  node; TYPE_1__ pqap_hook; int /*<<< orphan*/  matrix; struct mdev_device* mdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  mdev_list; int /*<<< orphan*/  info; int /*<<< orphan*/  available_instances; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  handle_pqap ; 
 struct ap_matrix_mdev* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* matrix_dev ; 
 int /*<<< orphan*/  FUNC4 (struct mdev_device*,struct ap_matrix_mdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct kobject *kobj, struct mdev_device *mdev)
{
	struct ap_matrix_mdev *matrix_mdev;

	if ((FUNC0(&matrix_dev->available_instances) < 0))
		return -EPERM;

	matrix_mdev = FUNC2(sizeof(*matrix_mdev), GFP_KERNEL);
	if (!matrix_mdev) {
		FUNC1(&matrix_dev->available_instances);
		return -ENOMEM;
	}

	matrix_mdev->mdev = mdev;
	FUNC7(&matrix_dev->info, &matrix_mdev->matrix);
	FUNC4(mdev, matrix_mdev);
	matrix_mdev->pqap_hook.hook = handle_pqap;
	matrix_mdev->pqap_hook.owner = THIS_MODULE;
	FUNC5(&matrix_dev->lock);
	FUNC3(&matrix_mdev->node, &matrix_dev->mdev_list);
	FUNC6(&matrix_dev->lock);

	return 0;
}