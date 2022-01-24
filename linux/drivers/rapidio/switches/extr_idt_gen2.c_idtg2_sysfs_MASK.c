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
struct device {int dummy; } ;
struct rio_dev {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_errlog ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct rio_dev *rdev, bool create)
{
	struct device *dev = &rdev->dev;
	int err = 0;

	if (create) {
		/* Initialize sysfs entries */
		err = FUNC1(dev, &dev_attr_errlog);
		if (err)
			FUNC0(dev, "Unable create sysfs errlog file\n");
	} else
		FUNC2(dev, &dev_attr_errlog);

	return err;
}