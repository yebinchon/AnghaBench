#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct cros_ec_dev {TYPE_1__ class_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 TYPE_2__ cros_ec_vbc_attr_group ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 struct cros_ec_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pd)
{
	struct cros_ec_dev *ec_dev = FUNC1(pd->dev.parent);
	struct device *dev = &pd->dev;
	int ret;

	ret = FUNC2(&ec_dev->class_dev.kobj,
				 &cros_ec_vbc_attr_group);
	if (ret < 0)
		FUNC0(dev, "failed to create %s attributes. err=%d\n",
			cros_ec_vbc_attr_group.name, ret);

	return ret;
}