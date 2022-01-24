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
struct device {int dummy; } ;
struct rproc {int name; int /*<<< orphan*/  lock; int /*<<< orphan*/  firmware; struct device dev; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*) ; 
 int FUNC4 (struct firmware const**,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct rproc*) ; 
 int FUNC6 (struct rproc*,struct firmware const*) ; 
 int FUNC7 (struct rproc*,int) ; 

int FUNC8(struct rproc *rproc)
{
	const struct firmware *firmware_p;
	struct device *dev = &rproc->dev;
	int ret;

	FUNC0(dev, "recovering %s\n", rproc->name);

	ret = FUNC1(&rproc->lock);
	if (ret)
		return ret;

	ret = FUNC7(rproc, true);
	if (ret)
		goto unlock_mutex;

	/* generate coredump */
	FUNC5(rproc);

	/* load firmware */
	ret = FUNC4(&firmware_p, rproc->firmware, dev);
	if (ret < 0) {
		FUNC0(dev, "request_firmware failed: %d\n", ret);
		goto unlock_mutex;
	}

	/* boot the remote processor up again */
	ret = FUNC6(rproc, firmware_p);

	FUNC3(firmware_p);

unlock_mutex:
	FUNC2(&rproc->lock);
	return ret;
}