#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  nr_sbal_nop; } ;
struct TYPE_6__ {int /*<<< orphan*/  use_cq; } ;
struct TYPE_7__ {TYPE_1__ out; } ;
struct qdio_q {int /*<<< orphan*/  nr; TYPE_4__* irq_ptr; TYPE_3__ q_stats; int /*<<< orphan*/  nr_buf_used; TYPE_2__ u; int /*<<< orphan*/  timestamp; } ;
struct TYPE_9__ {int /*<<< orphan*/  perf_stat_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  DBF_INFO ; 
 scalar_t__ QDIO_IQDIO_QFMT ; 
#define  SLSB_CU_OUTPUT_PRIMED 133 
#define  SLSB_P_OUTPUT_EMPTY 132 
#define  SLSB_P_OUTPUT_ERROR 131 
#define  SLSB_P_OUTPUT_HALTED 130 
#define  SLSB_P_OUTPUT_NOT_INIT 129 
#define  SLSB_P_OUTPUT_PENDING 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qdio_q*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct qdio_q*,unsigned int,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct qdio_q*) ; 
 scalar_t__ FUNC9 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (struct qdio_q*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct qdio_q*) ; 
 scalar_t__ FUNC13 (struct qdio_q*) ; 

__attribute__((used)) static int FUNC14(struct qdio_q *q, unsigned int start)
{
	unsigned char state = 0;
	int count;

	q->timestamp = FUNC7();

	if (FUNC9(q))
		if (((FUNC13(q) != QDIO_IQDIO_QFMT) &&
		    !FUNC10(q->irq_ptr)) ||
		    (FUNC13(q) == QDIO_IQDIO_QFMT &&
		    FUNC8(q)))
			FUNC12(q);

	count = FUNC4(&q->nr_buf_used);
	if (!count)
		return 0;

	count = FUNC6(q, start, &state, count, 0, q->u.out.use_cq);
	if (!count)
		return 0;

	switch (state) {
	case SLSB_P_OUTPUT_EMPTY:
	case SLSB_P_OUTPUT_PENDING:
		/* the adapter got it */
		FUNC0(DBF_INFO, q->irq_ptr,
			"out empty:%1d %02x", q->nr, count);

		FUNC5(count, &q->nr_buf_used);
		if (q->irq_ptr->perf_stat_enabled)
			FUNC2(q, count);
		return count;
	case SLSB_P_OUTPUT_ERROR:
		FUNC11(q, start, count);
		FUNC5(count, &q->nr_buf_used);
		if (q->irq_ptr->perf_stat_enabled)
			FUNC3(q, count);
		return count;
	case SLSB_CU_OUTPUT_PRIMED:
		/* the adapter has not fetched the output yet */
		if (q->irq_ptr->perf_stat_enabled)
			q->q_stats.nr_sbal_nop++;
		FUNC0(DBF_INFO, q->irq_ptr, "out primed:%1d",
			      q->nr);
		return 0;
	case SLSB_P_OUTPUT_NOT_INIT:
	case SLSB_P_OUTPUT_HALTED:
		return 0;
	default:
		FUNC1(1);
		return 0;
	}
}