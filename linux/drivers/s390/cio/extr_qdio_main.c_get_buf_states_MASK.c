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
struct TYPE_2__ {unsigned char* val; } ;
struct qdio_q {TYPE_1__ slsb; } ;

/* Variables and functions */
 unsigned char SLSB_OWNER_CU ; 
 unsigned char SLSB_P_OUTPUT_EMPTY ; 
 unsigned char SLSB_P_OUTPUT_PENDING ; 
 scalar_t__ FUNC0 (struct qdio_q*) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int FUNC2 (struct qdio_q*,unsigned char*,unsigned int,unsigned int,int) ; 

__attribute__((used)) static inline int FUNC3(struct qdio_q *q, unsigned int bufnr,
				 unsigned char *state, unsigned int count,
				 int auto_ack, int merge_pending)
{
	unsigned char __state = 0;
	int i = 1;

	if (FUNC0(q))
		return FUNC2(q, state, bufnr, count, auto_ack);

	/* get initial state: */
	__state = q->slsb.val[bufnr];

	/* Bail out early if there is no work on the queue: */
	if (__state & SLSB_OWNER_CU)
		goto out;

	if (merge_pending && __state == SLSB_P_OUTPUT_PENDING)
		__state = SLSB_P_OUTPUT_EMPTY;

	for (; i < count; i++) {
		bufnr = FUNC1(bufnr);

		/* merge PENDING into EMPTY: */
		if (merge_pending &&
		    q->slsb.val[bufnr] == SLSB_P_OUTPUT_PENDING &&
		    __state == SLSB_P_OUTPUT_EMPTY)
			continue;

		/* stop if next state differs from initial state: */
		if (q->slsb.val[bufnr] != __state)
			break;
	}

out:
	*state = __state;
	return i;
}