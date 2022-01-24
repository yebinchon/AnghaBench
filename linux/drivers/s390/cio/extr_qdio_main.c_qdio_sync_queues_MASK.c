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
struct qdio_q {int /*<<< orphan*/  irq_ptr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*) ; 

__attribute__((used)) static inline void FUNC3(struct qdio_q *q)
{
	/* PCI capable outbound queues will also be scanned so sync them too */
	if (FUNC0(q->irq_ptr))
		FUNC1(q);
	else
		FUNC2(q);
}