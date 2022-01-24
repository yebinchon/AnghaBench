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
struct rproc {int /*<<< orphan*/  lock; int /*<<< orphan*/ * table_ptr; int /*<<< orphan*/ * cached_table; int /*<<< orphan*/  power; int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rproc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rproc*) ; 
 int FUNC8 (struct rproc*,int) ; 

void FUNC9(struct rproc *rproc)
{
	struct device *dev = &rproc->dev;
	int ret;

	ret = FUNC4(&rproc->lock);
	if (ret) {
		FUNC2(dev, "can't lock rproc %s: %d\n", rproc->name, ret);
		return;
	}

	/* if the remote proc is still needed, bail out */
	if (!FUNC0(&rproc->power))
		goto out;

	ret = FUNC8(rproc, false);
	if (ret) {
		FUNC1(&rproc->power);
		goto out;
	}

	/* clean up all acquired resources */
	FUNC7(rproc);

	FUNC6(rproc);

	/* Free the copy of the resource table */
	FUNC3(rproc->cached_table);
	rproc->cached_table = NULL;
	rproc->table_ptr = NULL;
out:
	FUNC5(&rproc->lock);
}