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
struct qdio_q {unsigned int first_to_check; unsigned int qdio_error; scalar_t__ is_input_q; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int FUNC1 (struct qdio_q*,unsigned int) ; 
 int FUNC2 (struct qdio_q*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct qdio_q *q, unsigned int *bufnr,
				unsigned int *error)
{
	unsigned int start = q->first_to_check;
	int count;

	count = q->is_input_q ? FUNC1(q, start) :
				FUNC2(q, start);
	if (count == 0)
		return 0;

	*bufnr = start;
	*error = q->qdio_error;

	/* for the next time */
	q->first_to_check = FUNC0(start, count);
	q->qdio_error = 0;

	return count;
}