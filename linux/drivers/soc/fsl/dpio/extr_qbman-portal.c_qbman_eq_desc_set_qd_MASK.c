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
struct qbman_eq_desc {int verb; int /*<<< orphan*/  qpri; int /*<<< orphan*/  qdbin; int /*<<< orphan*/  tgtid; } ;

/* Variables and functions */
 int QB_ENQUEUE_CMD_TARGET_TYPE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct qbman_eq_desc *d, u32 qdid,
			  u32 qd_bin, u32 qd_prio)
{
	d->verb |= 1 << QB_ENQUEUE_CMD_TARGET_TYPE_SHIFT;
	d->tgtid = FUNC1(qdid);
	d->qdbin = FUNC0(qd_bin);
	d->qpri = qd_prio;
}