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
struct iscsi_pool {int max; void** pool; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_pool*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 void** FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void**,void**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_pool*,int /*<<< orphan*/ ,int) ; 

int
FUNC7(struct iscsi_pool *q, int max, void ***items, int item_size)
{
	int i, num_arrays = 1;

	FUNC6(q, 0, sizeof(*q));

	q->max = max;

	/* If the user passed an items pointer, he wants a copy of
	 * the array. */
	if (items)
		num_arrays++;
	q->pool = FUNC3(num_arrays * max, sizeof(void *), GFP_KERNEL);
	if (q->pool == NULL)
		return -ENOMEM;

	FUNC2(&q->queue, (void*)q->pool, max * sizeof(void*));

	for (i = 0; i < max; i++) {
		q->pool[i] = FUNC4(item_size, GFP_KERNEL);
		if (q->pool[i] == NULL) {
			q->max = i;
			goto enomem;
		}
		FUNC1(&q->queue, (void*)&q->pool[i], sizeof(void*));
	}

	if (items) {
		*items = q->pool + max;
		FUNC5(*items, q->pool, max * sizeof(void *));
	}

	return 0;

enomem:
	FUNC0(q);
	return -ENOMEM;
}