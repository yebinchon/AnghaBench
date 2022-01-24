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
struct rproc {scalar_t__ priv; } ;
struct q6v5 {int running; int /*<<< orphan*/  mpss_size; int /*<<< orphan*/  mpss_phys; int /*<<< orphan*/  mpss_perm; scalar_t__ dump_segment_mask; int /*<<< orphan*/  dev; int /*<<< orphan*/  mba_size; int /*<<< orphan*/  mba_phys; int /*<<< orphan*/  mba_perm; int /*<<< orphan*/  q6v5; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct q6v5*) ; 
 int /*<<< orphan*/  FUNC5 (struct q6v5*) ; 
 int FUNC6 (struct q6v5*) ; 
 int FUNC7 (struct q6v5*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct rproc *rproc)
{
	struct q6v5 *qproc = (struct q6v5 *)rproc->priv;
	int xfermemop_ret;
	int ret;

	ret = FUNC4(qproc);
	if (ret)
		return ret;

	FUNC2(qproc->dev, "MBA booted, loading mpss\n");

	ret = FUNC6(qproc);
	if (ret)
		goto reclaim_mpss;

	ret = FUNC8(&qproc->q6v5, FUNC3(5000));
	if (ret == -ETIMEDOUT) {
		FUNC1(qproc->dev, "start timed out\n");
		goto reclaim_mpss;
	}

	xfermemop_ret = FUNC7(qproc, &qproc->mba_perm, false,
						qproc->mba_phys,
						qproc->mba_size);
	if (xfermemop_ret)
		FUNC1(qproc->dev,
			"Failed to reclaim mba buffer system may become unstable\n");

	/* Reset Dump Segment Mask */
	qproc->dump_segment_mask = 0;
	qproc->running = true;

	return 0;

reclaim_mpss:
	xfermemop_ret = FUNC7(qproc, &qproc->mpss_perm,
						false, qproc->mpss_phys,
						qproc->mpss_size);
	FUNC0(xfermemop_ret);
	FUNC5(qproc);

	return ret;
}