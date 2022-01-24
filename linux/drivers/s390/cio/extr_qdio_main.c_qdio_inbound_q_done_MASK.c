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
struct TYPE_3__ {scalar_t__ timestamp; } ;
struct TYPE_4__ {TYPE_1__ in; } ;
struct qdio_q {int /*<<< orphan*/  irq_ptr; TYPE_2__ u; int /*<<< orphan*/  nr_buf_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  DBF_INFO ; 
 scalar_t__ MACHINE_IS_VM ; 
 scalar_t__ QDIO_INPUT_THRESHOLD ; 
 unsigned char SLSB_P_INPUT_ERROR ; 
 unsigned char SLSB_P_INPUT_PRIMED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*,unsigned int,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC6 (struct qdio_q*) ; 

__attribute__((used)) static inline int FUNC7(struct qdio_q *q, unsigned int start)
{
	unsigned char state = 0;

	if (!FUNC1(&q->nr_buf_used))
		return 1;

	if (FUNC5(q))
		FUNC6(q);
	FUNC2(q, start, &state, 0);

	if (state == SLSB_P_INPUT_PRIMED || state == SLSB_P_INPUT_ERROR)
		/* more work coming */
		return 0;

	if (FUNC4(q->irq_ptr))
		return 1;

	/* don't poll under z/VM */
	if (MACHINE_IS_VM)
		return 1;

	/*
	 * At this point we know, that inbound first_to_check
	 * has (probably) not moved (see qdio_inbound_processing).
	 */
	if (FUNC3() > q->u.in.timestamp + QDIO_INPUT_THRESHOLD) {
		FUNC0(DBF_INFO, q->irq_ptr, "in done:%02x", start);
		return 1;
	} else
		return 0;
}