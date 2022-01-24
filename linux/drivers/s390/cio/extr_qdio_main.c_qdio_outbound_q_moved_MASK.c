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
struct TYPE_3__ {scalar_t__ use_cq; } ;
struct TYPE_4__ {TYPE_1__ out; } ;
struct qdio_q {TYPE_2__ u; int /*<<< orphan*/  nr; int /*<<< orphan*/  irq_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBF_INFO ; 
 int FUNC1 (struct qdio_q*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*,unsigned int,int) ; 

__attribute__((used)) static inline int FUNC3(struct qdio_q *q, unsigned int start)
{
	int count;

	count = FUNC1(q, start);

	if (count) {
		FUNC0(DBF_INFO, q->irq_ptr, "out moved:%1d", q->nr);
		if (q->u.out.use_cq)
			FUNC2(q, start, count);
	}

	return count;
}