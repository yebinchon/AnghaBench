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
struct w1_master {long enable_pullup; int /*<<< orphan*/  mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct w1_master* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
						struct device_attribute *attr,
						const char *buf, size_t count)
{
	long tmp;
	struct w1_master *md = FUNC0(dev);
	int ret;

	ret = FUNC1(buf, 0, &tmp);
	if (ret)
		return ret;

	FUNC2(&md->mutex);
	md->enable_pullup = tmp;
	FUNC3(&md->mutex);

	return count;
}