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
struct w1_master {int max_slave_count; int /*<<< orphan*/  mutex; int /*<<< orphan*/  flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  W1_WARN_MAX_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct w1_master* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
	struct device_attribute *attr, const char *buf, size_t count)
{
	int tmp;
	struct w1_master *md = FUNC1(dev);

	if (FUNC2(buf, 0, &tmp) || tmp < 1)
		return -EINVAL;

	FUNC3(&md->mutex);
	md->max_slave_count = tmp;
	/* allow each time the max_slave_count is updated */
	FUNC0(W1_WARN_MAX_COUNT, &md->flags);
	FUNC4(&md->mutex);

	return count;
}