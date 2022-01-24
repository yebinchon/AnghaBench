#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct tee_device {int flags; TYPE_1__ dev; int /*<<< orphan*/ * pool; int /*<<< orphan*/  c_no_users; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int TEE_DEVICE_FLAG_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tee_dev_group ; 
 int /*<<< orphan*/  FUNC4 (struct tee_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct tee_device *teedev)
{
	if (!teedev)
		return;

	if (teedev->flags & TEE_DEVICE_FLAG_REGISTERED) {
		FUNC3(&teedev->dev.kobj, &tee_dev_group);
		FUNC0(&teedev->cdev);
		FUNC1(&teedev->dev);
	}

	FUNC4(teedev);
	FUNC5(&teedev->c_no_users);

	/*
	 * No need to take a mutex any longer now since teedev->desc was
	 * set to NULL before teedev->c_no_users was completed.
	 */

	teedev->pool = NULL;

	FUNC2(&teedev->dev);
}