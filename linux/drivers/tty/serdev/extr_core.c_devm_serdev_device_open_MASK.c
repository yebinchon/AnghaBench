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
struct serdev_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_serdev_device_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct serdev_device**) ; 
 struct serdev_device** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct serdev_device**) ; 
 int FUNC3 (struct serdev_device*) ; 

int FUNC4(struct device *dev, struct serdev_device *serdev)
{
	struct serdev_device **dr;
	int ret;

	dr = FUNC1(devm_serdev_device_release, sizeof(*dr), GFP_KERNEL);
	if (!dr)
		return -ENOMEM;

	ret = FUNC3(serdev);
	if (ret) {
		FUNC2(dr);
		return ret;
	}

	*dr = serdev;
	FUNC0(dev, dr);

	return 0;
}