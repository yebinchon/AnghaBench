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
typedef  int u64 ;
struct pp_ctx {int nmask; int pmask; int out_pidx; int out_db; int /*<<< orphan*/  lock; int /*<<< orphan*/  ntb; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENODEV ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct pp_ctx *pp)
{
	u64 link, out_db;
	int pidx;

	link = FUNC2(pp->ntb, NULL, NULL);

	/* Find next available peer */
	if (link & pp->nmask) {
		pidx = FUNC1(link & pp->nmask);
		out_db = FUNC0(pidx + 1);
	} else if (link & pp->pmask) {
		pidx = FUNC1(link & pp->pmask);
		out_db = FUNC0(pidx);
	} else {
		return -ENODEV;
	}

	FUNC3(&pp->lock);
	pp->out_pidx = pidx;
	pp->out_db = out_db;
	FUNC4(&pp->lock);

	return 0;
}