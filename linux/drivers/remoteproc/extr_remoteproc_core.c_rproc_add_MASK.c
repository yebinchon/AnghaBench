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
struct rproc {int /*<<< orphan*/  node; scalar_t__ auto_boot; int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rproc*) ; 
 int /*<<< orphan*/  rproc_list ; 
 int /*<<< orphan*/  rproc_list_mutex ; 
 int FUNC6 (struct rproc*) ; 

int FUNC7(struct rproc *rproc)
{
	struct device *dev = &rproc->dev;
	int ret;

	ret = FUNC1(dev);
	if (ret < 0)
		return ret;

	FUNC0(dev, "%s is available\n", rproc->name);

	/* create debugfs entries */
	FUNC5(rproc);

	/* if rproc is marked always-on, request it to boot */
	if (rproc->auto_boot) {
		ret = FUNC6(rproc);
		if (ret < 0)
			return ret;
	}

	/* expose to rproc_get_by_phandle users */
	FUNC3(&rproc_list_mutex);
	FUNC2(&rproc->node, &rproc_list);
	FUNC4(&rproc_list_mutex);

	return 0;
}