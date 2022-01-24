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
struct rproc {scalar_t__ state; int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ RPROC_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct rproc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rproc*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 struct rproc* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			      struct device_attribute *attr,
			      const char *buf, size_t count)
{
	struct rproc *rproc = FUNC4(dev);
	int ret = 0;

	if (FUNC3(buf, "start")) {
		if (rproc->state == RPROC_RUNNING)
			return -EBUSY;

		ret = FUNC1(rproc);
		if (ret)
			FUNC0(&rproc->dev, "Boot failed: %d\n", ret);
	} else if (FUNC3(buf, "stop")) {
		if (rproc->state != RPROC_RUNNING)
			return -EINVAL;

		FUNC2(rproc);
	} else {
		FUNC0(&rproc->dev, "Unrecognised option: %s\n", buf);
		ret = -EINVAL;
	}
	return ret ? ret : count;
}