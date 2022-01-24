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
struct rproc {int /*<<< orphan*/  dev; int /*<<< orphan*/  node; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; scalar_t__ auto_boot; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RPROC_DELETED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rproc*) ; 
 int /*<<< orphan*/  rproc_list_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct rproc*) ; 

int FUNC6(struct rproc *rproc)
{
	if (!rproc)
		return -EINVAL;

	/* if rproc is marked always-on, rproc_add() booted it */
	/* TODO: make sure this works with rproc->power > 1 */
	if (rproc->auto_boot)
		FUNC5(rproc);

	FUNC2(&rproc->lock);
	rproc->state = RPROC_DELETED;
	FUNC3(&rproc->lock);

	FUNC4(rproc);

	/* the rproc is downref'ed as soon as it's removed from the klist */
	FUNC2(&rproc_list_mutex);
	FUNC1(&rproc->node);
	FUNC3(&rproc_list_mutex);

	FUNC0(&rproc->dev);

	return 0;
}