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
struct xenvif_queue {int /*<<< orphan*/  pages_to_map; int /*<<< orphan*/  tx_map_ops; int /*<<< orphan*/  tx_copy_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct xenvif_queue*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct xenvif_queue*,int,unsigned int*,unsigned int*) ; 
 int FUNC6 (struct xenvif_queue*) ; 

int FUNC7(struct xenvif_queue *queue, int budget)
{
	unsigned nr_mops, nr_cops = 0;
	int work_done, ret;

	if (FUNC4(!FUNC3(queue)))
		return 0;

	FUNC5(queue, budget, &nr_cops, &nr_mops);

	if (nr_cops == 0)
		return 0;

	FUNC1(queue->tx_copy_ops, nr_cops);
	if (nr_mops != 0) {
		ret = FUNC2(queue->tx_map_ops,
				      NULL,
				      queue->pages_to_map,
				      nr_mops);
		FUNC0(ret);
	}

	work_done = FUNC6(queue);

	return work_done;
}