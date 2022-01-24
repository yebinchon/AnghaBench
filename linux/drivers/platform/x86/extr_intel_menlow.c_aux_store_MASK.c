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
struct intel_menlow_attribute {int /*<<< orphan*/  handle; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int*) ; 
 struct intel_menlow_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *dev_attr,
			 const char *buf, size_t count, int idx)
{
	struct intel_menlow_attribute *attr = FUNC3(dev_attr);
	int value;
	int result;

	/*Sanity check; should be a positive integer */
	if (!FUNC2(buf, "%d", &value))
		return -EINVAL;

	if (value < 0)
		return -EINVAL;

	result = FUNC1(attr->handle, idx, 
				    FUNC0(value));
	return result ? result : count;
}