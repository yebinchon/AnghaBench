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
struct qdio_q {unsigned int first_to_check; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qdio_q*,unsigned int) ; 
 int FUNC2 (struct qdio_q*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct qdio_q*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC5 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC6 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tasklet_inbound ; 
 int /*<<< orphan*/  tasklet_inbound_resched ; 
 int /*<<< orphan*/  tasklet_inbound_resched2 ; 

__attribute__((used)) static void FUNC7(struct qdio_q *q)
{
	unsigned int start = q->first_to_check;
	int count;

	FUNC6(q, tasklet_inbound);

	count = FUNC2(q, start);
	if (count == 0)
		return;

	start = FUNC0(start, count);
	q->first_to_check = start;
	FUNC3(q, count);

	if (!FUNC1(q, start)) {
		/* means poll time is not yet over */
		FUNC6(q, tasklet_inbound_resched);
		if (!FUNC5(q))
			return;
	}

	FUNC4(q);
	/*
	 * We need to check again to not lose initiative after
	 * resetting the ACK state.
	 */
	if (!FUNC1(q, start)) {
		FUNC6(q, tasklet_inbound_resched2);
		FUNC5(q);
	}
}