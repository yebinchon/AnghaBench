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
struct TYPE_3__ {int /*<<< orphan*/  nr_sbal_nop; } ;
struct qdio_q {int /*<<< orphan*/  nr; TYPE_2__* irq_ptr; TYPE_1__ q_stats; int /*<<< orphan*/  nr_buf_used; int /*<<< orphan*/  timestamp; } ;
struct TYPE_4__ {int /*<<< orphan*/  perf_stat_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  DBF_INFO ; 
 int /*<<< orphan*/  QDIO_MAX_BUFFERS_MASK ; 
#define  SLSB_CU_INPUT_EMPTY 132 
#define  SLSB_P_INPUT_ACK 131 
#define  SLSB_P_INPUT_ERROR 130 
#define  SLSB_P_INPUT_NOT_INIT 129 
#define  SLSB_P_INPUT_PRIMED 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qdio_q*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct qdio_q*,unsigned int,unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct qdio_q*,unsigned int,int) ; 
 int /*<<< orphan*/  inbound_queue_full ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct qdio_q*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct qdio_q*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct qdio_q *q, unsigned int start)
{
	unsigned char state = 0;
	int count;

	q->timestamp = FUNC7();

	/*
	 * Don't check 128 buffers, as otherwise qdio_inbound_q_moved
	 * would return 0.
	 */
	count = FUNC9(FUNC4(&q->nr_buf_used), QDIO_MAX_BUFFERS_MASK);
	if (!count)
		return 0;

	/*
	 * No siga sync here, as a PCI or we after a thin interrupt
	 * already sync'ed the queues.
	 */
	count = FUNC6(q, start, &state, count, 1, 0);
	if (!count)
		return 0;

	switch (state) {
	case SLSB_P_INPUT_PRIMED:
		FUNC8(q, start, count);
		if (FUNC5(count, &q->nr_buf_used) == 0)
			FUNC11(q, inbound_queue_full);
		if (q->irq_ptr->perf_stat_enabled)
			FUNC2(q, count);
		return count;
	case SLSB_P_INPUT_ERROR:
		FUNC10(q, start, count);
		if (FUNC5(count, &q->nr_buf_used) == 0)
			FUNC11(q, inbound_queue_full);
		if (q->irq_ptr->perf_stat_enabled)
			FUNC3(q, count);
		return count;
	case SLSB_CU_INPUT_EMPTY:
	case SLSB_P_INPUT_NOT_INIT:
	case SLSB_P_INPUT_ACK:
		if (q->irq_ptr->perf_stat_enabled)
			q->q_stats.nr_sbal_nop++;
		FUNC0(DBF_INFO, q->irq_ptr, "in nop:%1d %#02x",
			      q->nr, start);
		return 0;
	default:
		FUNC1(1);
		return 0;
	}
}