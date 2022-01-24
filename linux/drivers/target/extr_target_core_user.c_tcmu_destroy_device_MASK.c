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
struct tcmu_dev {int /*<<< orphan*/  kref; int /*<<< orphan*/  uio_info; int /*<<< orphan*/  node; int /*<<< orphan*/  qfull_timer; int /*<<< orphan*/  cmd_timer; } ;
struct se_device {int dummy; } ;

/* Variables and functions */
 struct tcmu_dev* FUNC0 (struct se_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  root_udev_mutex ; 
 int /*<<< orphan*/  tcmu_dev_kref_release ; 
 int /*<<< orphan*/  FUNC6 (struct tcmu_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct se_device *dev)
{
	struct tcmu_dev *udev = FUNC0(dev);

	FUNC1(&udev->cmd_timer);
	FUNC1(&udev->qfull_timer);

	FUNC4(&root_udev_mutex);
	FUNC3(&udev->node);
	FUNC5(&root_udev_mutex);

	FUNC6(udev);

	FUNC7(&udev->uio_info);

	/* release ref from configure */
	FUNC2(&udev->kref, tcmu_dev_kref_release);
}