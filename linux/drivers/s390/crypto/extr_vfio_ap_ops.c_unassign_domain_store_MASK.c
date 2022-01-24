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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {unsigned long aqm_max; int /*<<< orphan*/  aqm; } ;
struct ap_matrix_mdev {TYPE_1__ matrix; scalar_t__ kvm; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 TYPE_2__* matrix_dev ; 
 struct mdev_device* FUNC2 (struct device*) ; 
 struct ap_matrix_mdev* FUNC3 (struct mdev_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	int ret;
	unsigned long apqi;
	struct mdev_device *mdev = FUNC2(dev);
	struct ap_matrix_mdev *matrix_mdev = FUNC3(mdev);

	/* If the guest is running, disallow un-assignment of domain */
	if (matrix_mdev->kvm)
		return -EBUSY;

	ret = FUNC1(buf, 0, &apqi);
	if (ret)
		return ret;

	if (apqi > matrix_mdev->matrix.aqm_max)
		return -ENODEV;

	FUNC4(&matrix_dev->lock);
	FUNC0((unsigned long)apqi, matrix_mdev->matrix.aqm);
	FUNC5(&matrix_dev->lock);

	return count;
}