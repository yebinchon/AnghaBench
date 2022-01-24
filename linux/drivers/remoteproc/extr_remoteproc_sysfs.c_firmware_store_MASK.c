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
struct rproc {scalar_t__ state; char* firmware; int /*<<< orphan*/  lock; int /*<<< orphan*/  name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ RPROC_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,char*) ; 
 struct rproc* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			      struct device_attribute *attr,
			      const char *buf, size_t count)
{
	struct rproc *rproc = FUNC6(dev);
	char *p;
	int err, len = count;

	err = FUNC3(&rproc->lock);
	if (err) {
		FUNC0(dev, "can't lock rproc %s: %d\n", rproc->name, err);
		return -EINVAL;
	}

	if (rproc->state != RPROC_OFFLINE) {
		FUNC0(dev, "can't change firmware while running\n");
		err = -EBUSY;
		goto out;
	}

	len = FUNC5(buf, "\n");
	if (!len) {
		FUNC0(dev, "can't provide a NULL firmware\n");
		err = -EINVAL;
		goto out;
	}

	p = FUNC2(buf, len, GFP_KERNEL);
	if (!p) {
		err = -ENOMEM;
		goto out;
	}

	FUNC1(rproc->firmware);
	rproc->firmware = p;
out:
	FUNC4(&rproc->lock);

	return err ? err : count;
}