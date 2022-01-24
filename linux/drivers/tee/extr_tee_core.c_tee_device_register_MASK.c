#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  devt; } ;
struct tee_device {int flags; int /*<<< orphan*/  cdev; TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int TEE_DEVICE_FLAG_REGISTERED ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tee_dev_group ; 

int FUNC8(struct tee_device *teedev)
{
	int rc;

	if (teedev->flags & TEE_DEVICE_FLAG_REGISTERED) {
		FUNC4(&teedev->dev, "attempt to register twice\n");
		return -EINVAL;
	}

	rc = FUNC2(&teedev->cdev, teedev->dev.devt, 1);
	if (rc) {
		FUNC4(&teedev->dev,
			"unable to cdev_add() %s, major %d, minor %d, err=%d\n",
			teedev->name, FUNC0(teedev->dev.devt),
			FUNC1(teedev->dev.devt), rc);
		return rc;
	}

	rc = FUNC5(&teedev->dev);
	if (rc) {
		FUNC4(&teedev->dev,
			"unable to device_add() %s, major %d, minor %d, err=%d\n",
			teedev->name, FUNC0(teedev->dev.devt),
			FUNC1(teedev->dev.devt), rc);
		goto err_device_add;
	}

	rc = FUNC7(&teedev->dev.kobj, &tee_dev_group);
	if (rc) {
		FUNC4(&teedev->dev,
			"failed to create sysfs attributes, err=%d\n", rc);
		goto err_sysfs_create_group;
	}

	teedev->flags |= TEE_DEVICE_FLAG_REGISTERED;
	return 0;

err_sysfs_create_group:
	FUNC6(&teedev->dev);
err_device_add:
	FUNC3(&teedev->cdev);
	return rc;
}