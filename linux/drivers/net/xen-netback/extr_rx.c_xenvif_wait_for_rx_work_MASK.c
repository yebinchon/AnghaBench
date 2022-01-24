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
struct xenvif_queue {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 
 scalar_t__ FUNC4 (struct xenvif_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct xenvif_queue*) ; 

__attribute__((used)) static void FUNC6(struct xenvif_queue *queue)
{
	FUNC0(wait);

	if (FUNC4(queue))
		return;

	for (;;) {
		long ret;

		FUNC2(&queue->wq, &wait, TASK_INTERRUPTIBLE);
		if (FUNC4(queue))
			break;
		ret = FUNC3(FUNC5(queue));
		if (!ret)
			break;
	}
	FUNC1(&queue->wq, &wait);
}