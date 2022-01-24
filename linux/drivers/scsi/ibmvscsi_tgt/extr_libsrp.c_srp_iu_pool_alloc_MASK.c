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
struct srp_queue {void* pool; int /*<<< orphan*/  queue; struct iu_entry* items; int /*<<< orphan*/  lock; } ;
struct srp_buf {int dummy; } ;
struct iu_entry {struct srp_buf* sbuf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct srp_queue *q, size_t max,
			     struct srp_buf **ring)
{
	struct iu_entry *iue;
	int i;

	q->pool = FUNC0(max, sizeof(struct iu_entry *), GFP_KERNEL);
	if (!q->pool)
		return -ENOMEM;
	q->items = FUNC0(max, sizeof(struct iu_entry), GFP_KERNEL);
	if (!q->items)
		goto free_pool;

	FUNC4(&q->lock);
	FUNC2(&q->queue, (void *)q->pool, max * sizeof(void *));

	for (i = 0, iue = q->items; i < max; i++) {
		FUNC1(&q->queue, (void *)&iue, sizeof(void *));
		iue->sbuf = ring[i];
		iue++;
	}
	return 0;

free_pool:
	FUNC3(q->pool);
	return -ENOMEM;
}