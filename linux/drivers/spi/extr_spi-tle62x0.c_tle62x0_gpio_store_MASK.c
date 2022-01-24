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
struct tle62x0_state {int gpio_state; int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,unsigned long) ; 
 struct tle62x0_state* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tle62x0_state*) ; 
 int FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr,
		const char *buf, size_t len)
{
	struct tle62x0_state *st = FUNC1(dev);
	int gpio_num = FUNC6(attr);
	unsigned long val;
	char *endp;

	val = FUNC4(buf, &endp, 0);
	if (buf == endp)
		return -EINVAL;

	FUNC0(dev, "setting gpio %d to %ld\n", gpio_num, val);

	FUNC2(&st->lock);

	if (val)
		st->gpio_state |= 1 << gpio_num;
	else
		st->gpio_state &= ~(1 << gpio_num);

	FUNC5(st);
	FUNC3(&st->lock);

	return len;
}