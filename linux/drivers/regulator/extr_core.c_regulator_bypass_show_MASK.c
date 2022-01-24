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
struct regulator_dev {TYPE_2__* desc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_bypass ) (struct regulator_dev*,int*) ;} ;

/* Variables and functions */
 struct regulator_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*) ; 
 int FUNC2 (struct regulator_dev*,int*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	struct regulator_dev *rdev = FUNC0(dev);
	const char *report;
	bool bypass;
	int ret;

	ret = rdev->desc->ops->get_bypass(rdev, &bypass);

	if (ret != 0)
		report = "unknown";
	else if (bypass)
		report = "enabled";
	else
		report = "disabled";

	return FUNC1(buf, "%s\n", report);
}