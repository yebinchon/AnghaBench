#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct csio_wrm {int free_qidx; struct csio_q** q_arr; } ;
struct TYPE_3__ {int /*<<< orphan*/  physeqid; } ;
struct TYPE_4__ {TYPE_1__ eq; } ;
struct csio_q {scalar_t__ inc_idx; TYPE_2__ un; } ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int DBTYPE_F ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SGE_PF_KDOORBELL_A ; 
 struct csio_wrm* FUNC5 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(struct csio_hw *hw, int qidx, bool prio)
{
	struct csio_wrm *wrm = FUNC5(hw);
	struct csio_q *q = wrm->q_arr[qidx];

	FUNC0((qidx >= 0) && (qidx < wrm->free_qidx));

	FUNC7();
	/* Ring SGE Doorbell writing q->pidx into it */
	FUNC6(hw, FUNC1(prio) | FUNC4(q->un.eq.physeqid) |
			  FUNC3(q->inc_idx) | DBTYPE_F,
			  FUNC2(SGE_PF_KDOORBELL_A));
	q->inc_idx = 0;

	return 0;
}