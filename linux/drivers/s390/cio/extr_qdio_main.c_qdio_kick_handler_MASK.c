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
struct qdio_q {int first_to_kick; scalar_t__ qdio_error; TYPE_1__* irq_ptr; int /*<<< orphan*/  nr; int /*<<< orphan*/  (* handler ) (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ) ;scalar_t__ is_input_q; } ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  int_parm; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,char*,int,unsigned int) ; 
 int /*<<< orphan*/  DBF_INFO ; 
 scalar_t__ QDIO_IRQ_STATE_ACTIVE ; 
 int FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  inbound_handler ; 
 int /*<<< orphan*/  outbound_handler ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct qdio_q *q, unsigned int count)
{
	int start = q->first_to_kick;

	if (FUNC4(q->irq_ptr->state != QDIO_IRQ_STATE_ACTIVE))
		return;

	if (q->is_input_q) {
		FUNC2(q, inbound_handler);
		FUNC0(DBF_INFO, q->irq_ptr, "kih s:%02x c:%02x", start, count);
	} else {
		FUNC2(q, outbound_handler);
		FUNC0(DBF_INFO, q->irq_ptr, "koh: s:%02x c:%02x",
			      start, count);
	}

	q->handler(q->irq_ptr->cdev, q->qdio_error, q->nr, start, count,
		   q->irq_ptr->int_parm);

	/* for the next time */
	q->first_to_kick = FUNC1(start, count);
	q->qdio_error = 0;
}