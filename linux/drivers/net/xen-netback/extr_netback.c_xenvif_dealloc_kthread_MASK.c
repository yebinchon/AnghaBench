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
struct xenvif_queue {int /*<<< orphan*/  dealloc_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct xenvif_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct xenvif_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct xenvif_queue*) ; 

int FUNC5(void *data)
{
	struct xenvif_queue *queue = data;

	for (;;) {
		FUNC2(queue->dealloc_wq,
					 FUNC1(queue) ||
					 FUNC3(queue));
		if (FUNC3(queue))
			break;

		FUNC4(queue);
		FUNC0();
	}

	/* Unmap anything remaining*/
	if (FUNC1(queue))
		FUNC4(queue);

	return 0;
}