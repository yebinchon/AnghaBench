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
struct cdev {int /*<<< orphan*/  kobj; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  UIO_MAX_DEVICES ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (struct cdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cdev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 struct cdev* uio_cdev ; 
 int /*<<< orphan*/  uio_fops ; 
 int /*<<< orphan*/  uio_major ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void)
{
	static const char name[] = "uio";
	struct cdev *cdev = NULL;
	dev_t uio_dev = 0;
	int result;

	result = FUNC1(&uio_dev, 0, UIO_MAX_DEVICES, name);
	if (result)
		goto out;

	result = -ENOMEM;
	cdev = FUNC3();
	if (!cdev)
		goto out_unregister;

	cdev->owner = THIS_MODULE;
	cdev->ops = &uio_fops;
	FUNC5(&cdev->kobj, "%s", name);

	result = FUNC2(cdev, uio_dev, UIO_MAX_DEVICES);
	if (result)
		goto out_put;

	uio_major = FUNC0(uio_dev);
	uio_cdev = cdev;
	return 0;
out_put:
	FUNC4(&cdev->kobj);
out_unregister:
	FUNC6(uio_dev, UIO_MAX_DEVICES);
out:
	return result;
}