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
struct eeepc_laptop {int cpufv_disabled; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 struct eeepc_laptop* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			   struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct eeepc_laptop *eeepc = FUNC0(dev);
	int rv, value;

	rv = FUNC1(buf, &value);
	if (rv < 0)
		return rv;

	switch (value) {
	case 0:
		if (eeepc->cpufv_disabled)
			FUNC2("cpufv enabled (not officially supported on this model)\n");
		eeepc->cpufv_disabled = false;
		return count;
	case 1:
		return -EPERM;
	default:
		return -EINVAL;
	}
}