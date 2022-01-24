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
struct TYPE_3__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_4__ {TYPE_1__ in; } ;
struct qdio_q {TYPE_2__ u; int /*<<< orphan*/  irq_ptr; } ;

/* Variables and functions */
 scalar_t__ MACHINE_IS_LPAR ; 
 int FUNC0 (struct qdio_q*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct qdio_q *q, unsigned int start)
{
	int count;

	count = FUNC0(q, start);

	if (count && !FUNC2(q->irq_ptr) && MACHINE_IS_LPAR)
		q->u.in.timestamp = FUNC1();

	return count;
}