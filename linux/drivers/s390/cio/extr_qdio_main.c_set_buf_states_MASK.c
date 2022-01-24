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
struct TYPE_2__ {int /*<<< orphan*/ * val; } ;
struct qdio_q {TYPE_1__ slsb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qdio_q*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct qdio_q*,unsigned char,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char) ; 

__attribute__((used)) static inline int FUNC4(struct qdio_q *q, int bufnr,
				 unsigned char state, int count)
{
	int i;

	if (FUNC0(q))
		return FUNC2(q, state, bufnr, count);

	for (i = 0; i < count; i++) {
		FUNC3(&q->slsb.val[bufnr], state);
		bufnr = FUNC1(bufnr);
	}
	return count;
}