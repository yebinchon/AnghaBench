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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rfkill; } ;
struct asus_laptop {TYPE_1__ gps; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct asus_laptop*,int) ; 
 struct asus_laptop* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	struct asus_laptop *asus = FUNC1(dev);
	int rv, value;
	int ret;

	rv = FUNC2(buf, 0, &value);
	if (rv < 0)
		return rv;
	ret = FUNC0(asus, !!value);
	if (ret)
		return ret;
	FUNC3(asus->gps.rfkill, !value);
	return count;
}