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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct kfifo {int dummy; } ;
struct ab_task {int result; int /*<<< orphan*/  done; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int FUNC0 (struct ab_task*,struct kfifo*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct ab_task *t, struct kfifo *q, spinlock_t *slock,
		     wait_queue_head_t *wq)
{
	int ret;

	ret = FUNC0(t, q, slock, wq);
	if (ret)
		return ret;
	ret = FUNC1(&t->done);
	if (ret)
		return ret;
	return t->result;
}