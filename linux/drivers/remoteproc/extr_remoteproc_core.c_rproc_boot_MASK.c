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
struct rproc {int name; scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  power; int /*<<< orphan*/  firmware; struct device dev; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ RPROC_DELETED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct firmware const*) ; 
 int FUNC8 (struct firmware const**,int /*<<< orphan*/ ,struct device*) ; 
 int FUNC9 (struct rproc*,struct firmware const*) ; 

int FUNC10(struct rproc *rproc)
{
	const struct firmware *firmware_p;
	struct device *dev;
	int ret;

	if (!rproc) {
		FUNC6("invalid rproc handle\n");
		return -EINVAL;
	}

	dev = &rproc->dev;

	ret = FUNC4(&rproc->lock);
	if (ret) {
		FUNC2(dev, "can't lock rproc %s: %d\n", rproc->name, ret);
		return ret;
	}

	if (rproc->state == RPROC_DELETED) {
		ret = -ENODEV;
		FUNC2(dev, "can't boot deleted rproc %s\n", rproc->name);
		goto unlock_mutex;
	}

	/* skip the boot process if rproc is already powered up */
	if (FUNC1(&rproc->power) > 1) {
		ret = 0;
		goto unlock_mutex;
	}

	FUNC3(dev, "powering up %s\n", rproc->name);

	/* load firmware */
	ret = FUNC8(&firmware_p, rproc->firmware, dev);
	if (ret < 0) {
		FUNC2(dev, "request_firmware failed: %d\n", ret);
		goto downref_rproc;
	}

	ret = FUNC9(rproc, firmware_p);

	FUNC7(firmware_p);

downref_rproc:
	if (ret)
		FUNC0(&rproc->power);
unlock_mutex:
	FUNC5(&rproc->lock);
	return ret;
}