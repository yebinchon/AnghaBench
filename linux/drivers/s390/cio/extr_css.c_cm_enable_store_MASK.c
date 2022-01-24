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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct channel_subsystem {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cm_enabled; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct channel_subsystem*,int) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct channel_subsystem* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *a,
			       const char *buf, size_t count)
{
	struct channel_subsystem *css = FUNC4(dev);
	unsigned long val;
	int ret;

	ret = FUNC1(buf, 16, &val);
	if (ret)
		return ret;
	FUNC2(&css->mutex);
	switch (val) {
	case 0:
		ret = css->cm_enabled ? FUNC0(css, 0) : 0;
		break;
	case 1:
		ret = css->cm_enabled ? 0 : FUNC0(css, 1);
		break;
	default:
		ret = -EINVAL;
	}
	FUNC3(&css->mutex);
	return ret < 0 ? ret : count;
}