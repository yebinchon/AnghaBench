#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct asd_seq_data {int /*<<< orphan*/  pend_q_lock; int /*<<< orphan*/  pending; } ;
struct asd_ascb {int /*<<< orphan*/  list; TYPE_3__* scb; TYPE_1__* ha; } ;
struct TYPE_5__ {int /*<<< orphan*/  opcode; } ;
struct TYPE_6__ {TYPE_2__ header; } ;
struct TYPE_4__ {struct asd_seq_data seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct asd_ascb* ascb ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ascb*) ; 
 struct asd_ascb* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 

void FUNC6(struct timer_list *t)
{
	struct asd_ascb *ascb = FUNC2(ascb, t, timer);
	struct asd_seq_data *seq = &ascb->ha->seq;
	unsigned long flags;

	FUNC0("scb:0x%x timed out\n", ascb->scb->header.opcode);

	FUNC4(&seq->pend_q_lock, flags);
	seq->pending--;
	FUNC3(&ascb->list);
	FUNC5(&seq->pend_q_lock, flags);

	FUNC1(ascb);
}