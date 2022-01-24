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
struct qbman_swp {int dummy; } ;
struct qbman_fq_query_np_rslt {int dummy; } ;
struct dpaa2_io {int /*<<< orphan*/  lock_mgmt_cmd; struct qbman_swp* swp; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct qbman_swp*,int /*<<< orphan*/ ,struct qbman_fq_query_np_rslt*) ; 
 int /*<<< orphan*/  FUNC1 (struct qbman_fq_query_np_rslt*) ; 
 int /*<<< orphan*/  FUNC2 (struct qbman_fq_query_np_rslt*) ; 
 struct dpaa2_io* FUNC3 (struct dpaa2_io*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct dpaa2_io *d, u32 fqid,
			    u32 *fcnt, u32 *bcnt)
{
	struct qbman_fq_query_np_rslt state;
	struct qbman_swp *swp;
	unsigned long irqflags;
	int ret;

	d = FUNC3(d);
	if (!d)
		return -ENODEV;

	swp = d->swp;
	FUNC4(&d->lock_mgmt_cmd, irqflags);
	ret = FUNC0(swp, fqid, &state);
	FUNC5(&d->lock_mgmt_cmd, irqflags);
	if (ret)
		return ret;
	*fcnt = FUNC2(&state);
	*bcnt = FUNC1(&state);

	return 0;
}