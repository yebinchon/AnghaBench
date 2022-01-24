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
struct tb_switch {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t FUNC0 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (struct tb_switch*,unsigned int) ; 
 struct tb_switch* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct tb_switch *sw = FUNC5(dev);
	unsigned int val;
	ssize_t ret;

	ret = FUNC0(buf, 0, &val);
	if (ret)
		return ret;
	if (val > 2)
		return -EINVAL;

	FUNC1(&sw->dev);
	ret = FUNC4(sw, val);
	FUNC2(&sw->dev);
	FUNC3(&sw->dev);

	return ret ? ret : count;
}