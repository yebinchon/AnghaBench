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
typedef  int /*<<< orphan*/  t ;
struct kfifo {int dummy; } ;
struct ab_task {int /*<<< orphan*/  start_jiffies; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct ab_task*) ; 
 int /*<<< orphan*/  FUNC1 (struct ab_task*) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC2 (struct kfifo*,struct ab_task**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct ab_task *t, struct kfifo *q, spinlock_t *slock,
		wait_queue_head_t *wq)
{
	int ret;

	t->start_jiffies = jiffies;
	FUNC0(t);
	ret = FUNC2(q, &t, sizeof(t), slock);
	if (!ret) {
		FUNC1(t);
		return -ENOMEM;
	}
	FUNC3(wq);
	return 0;
}