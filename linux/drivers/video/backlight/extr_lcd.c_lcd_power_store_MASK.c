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
struct lcd_device {int /*<<< orphan*/  ops_lock; TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_power ) (struct lcd_device*,unsigned long) ;} ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct lcd_device*,unsigned long) ; 
 struct lcd_device* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	int rc;
	struct lcd_device *ld = FUNC5(dev);
	unsigned long power;

	rc = FUNC0(buf, 0, &power);
	if (rc)
		return rc;

	rc = -ENXIO;

	FUNC1(&ld->ops_lock);
	if (ld->ops && ld->ops->set_power) {
		FUNC3("set power to %lu\n", power);
		ld->ops->set_power(ld, power);
		rc = count;
	}
	FUNC2(&ld->ops_lock);

	return rc;
}