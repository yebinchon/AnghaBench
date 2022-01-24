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
struct qdio_q {unsigned int first_to_check; int /*<<< orphan*/  irq_ptr; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 scalar_t__ FUNC1 (struct qdio_q*) ; 
 scalar_t__ FUNC2 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qdio_q*,unsigned int) ; 
 int FUNC5 (struct qdio_q*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct qdio_q*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC8 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC9 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC10 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tasklet_inbound ; 
 int /*<<< orphan*/  tasklet_inbound_resched ; 
 int /*<<< orphan*/  tasklet_inbound_resched2 ; 

__attribute__((used)) static void FUNC11(struct qdio_q *q)
{
	unsigned int start = q->first_to_check;
	int count;

	FUNC10(q, tasklet_inbound);
	if (FUNC1(q) && FUNC2(q))
		FUNC8(q);

	/* The interrupt could be caused by a PCI request: */
	FUNC3(q->irq_ptr);

	count = FUNC5(q, start);
	if (count == 0)
		return;

	start = FUNC0(start, count);
	q->first_to_check = start;
	FUNC6(q, count);

	if (!FUNC4(q, start)) {
		FUNC10(q, tasklet_inbound_resched);
		if (!FUNC9(q))
			return;
	}

	FUNC7(q);
	/*
	 * We need to check again to not lose initiative after
	 * resetting the ACK state.
	 */
	if (!FUNC4(q, start)) {
		FUNC10(q, tasklet_inbound_resched2);
		FUNC9(q);
	}
}