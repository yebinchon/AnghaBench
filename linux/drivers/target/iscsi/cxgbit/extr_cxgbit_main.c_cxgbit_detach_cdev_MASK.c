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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct cxgbit_device {int /*<<< orphan*/  list; TYPE_1__ cskq; } ;

/* Variables and functions */
 int /*<<< orphan*/  cdev_list_lock ; 
 int /*<<< orphan*/  FUNC0 (struct cxgbit_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbit_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct cxgbit_device *cdev)
{
	bool free_cdev = false;

	FUNC6(&cdev->cskq.lock);
	if (FUNC3(&cdev->cskq.list))
		free_cdev = true;
	FUNC7(&cdev->cskq.lock);

	if (free_cdev) {
		FUNC4(&cdev_list_lock);
		FUNC2(&cdev->list);
		FUNC5(&cdev_list_lock);

		FUNC1(cdev);
	} else {
		FUNC0(cdev);
	}
}