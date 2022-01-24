#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct rproc {int /*<<< orphan*/  name; int /*<<< orphan*/  state; TYPE_1__* ops; int /*<<< orphan*/  cached_table; int /*<<< orphan*/  table_ptr; struct device dev; } ;
struct TYPE_2__ {int (* stop ) (struct rproc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RPROC_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rproc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rproc*) ; 
 int FUNC4 (struct rproc*) ; 

__attribute__((used)) static int FUNC5(struct rproc *rproc, bool crashed)
{
	struct device *dev = &rproc->dev;
	int ret;

	/* Stop any subdevices for the remote processor */
	FUNC2(rproc, crashed);

	/* the installed resource table is no longer accessible */
	rproc->table_ptr = rproc->cached_table;

	/* power off the remote processor */
	ret = rproc->ops->stop(rproc);
	if (ret) {
		FUNC0(dev, "can't stop rproc: %d\n", ret);
		return ret;
	}

	FUNC3(rproc);

	rproc->state = RPROC_OFFLINE;

	FUNC1(dev, "stopped remote processor %s\n", rproc->name);

	return 0;
}