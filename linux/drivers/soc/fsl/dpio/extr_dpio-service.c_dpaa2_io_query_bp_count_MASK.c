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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct qbman_swp {int dummy; } ;
struct qbman_bp_query_rslt {int dummy; } ;
struct dpaa2_io {int /*<<< orphan*/  lock_mgmt_cmd; struct qbman_swp* swp; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct qbman_bp_query_rslt*) ; 
 int FUNC1 (struct qbman_swp*,int /*<<< orphan*/ ,struct qbman_bp_query_rslt*) ; 
 struct dpaa2_io* FUNC2 (struct dpaa2_io*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct dpaa2_io *d, u16 bpid, u32 *num)
{
	struct qbman_bp_query_rslt state;
	struct qbman_swp *swp;
	unsigned long irqflags;
	int ret;

	d = FUNC2(d);
	if (!d)
		return -ENODEV;

	swp = d->swp;
	FUNC3(&d->lock_mgmt_cmd, irqflags);
	ret = FUNC1(swp, bpid, &state);
	FUNC4(&d->lock_mgmt_cmd, irqflags);
	if (ret)
		return ret;
	*num = FUNC0(&state);
	return 0;
}