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
struct qdio_q {int nr; TYPE_1__* irq_ptr; int /*<<< orphan*/  first_to_kick; int /*<<< orphan*/  (* handler ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  is_input_q; } ;
struct TYPE_2__ {int /*<<< orphan*/  int_parm; int /*<<< orphan*/  cdev; int /*<<< orphan*/  sch_token; scalar_t__ nr_input_qs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  DBF_WARN ; 
 int /*<<< orphan*/  QDIO_ERROR_GET_BUF_STATE ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned char*,int,int*,int*,int) ; 
 int /*<<< orphan*/  eqbs ; 
 int /*<<< orphan*/  eqbs_partial ; 
 int /*<<< orphan*/  FUNC4 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct qdio_q *q, unsigned char *state,
			int start, int count, int auto_ack)
{
	int tmp_count = count, tmp_start = start, nr = q->nr;
	unsigned int ccq = 0;

	FUNC4(q, eqbs);

	if (!q->is_input_q)
		nr += q->irq_ptr->nr_input_qs;
again:
	ccq = FUNC3(q->irq_ptr->sch_token, state, nr, &tmp_start, &tmp_count,
		      auto_ack);

	switch (ccq) {
	case 0:
	case 32:
		/* all done, or next buffer state different */
		return count - tmp_count;
	case 96:
		/* not all buffers processed */
		FUNC4(q, eqbs_partial);
		FUNC0(DBF_WARN, q->irq_ptr, "EQBS part:%02x",
			tmp_count);
		return count - tmp_count;
	case 97:
		/* no buffer processed */
		FUNC0(DBF_WARN, q->irq_ptr, "EQBS again:%2d", ccq);
		goto again;
	default:
		FUNC1("%4x ccq:%3d", FUNC2(q), ccq);
		FUNC1("%4x EQBS ERROR", FUNC2(q));
		FUNC1("%3d%3d%2d", count, tmp_count, nr);
		q->handler(q->irq_ptr->cdev, QDIO_ERROR_GET_BUF_STATE, q->nr,
			   q->first_to_kick, count, q->irq_ptr->int_parm);
		return 0;
	}
}