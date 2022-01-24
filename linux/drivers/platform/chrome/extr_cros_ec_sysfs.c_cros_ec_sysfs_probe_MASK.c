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
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct cros_ec_dev {TYPE_1__ class_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  cros_ec_attr_group ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct cros_ec_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pd)
{
	struct cros_ec_dev *ec_dev = FUNC1(pd->dev.parent);
	struct device *dev = &pd->dev;
	int ret;

	ret = FUNC2(&ec_dev->class_dev.kobj, &cros_ec_attr_group);
	if (ret < 0)
		FUNC0(dev, "failed to create attributes. err=%d\n", ret);

	return ret;
}