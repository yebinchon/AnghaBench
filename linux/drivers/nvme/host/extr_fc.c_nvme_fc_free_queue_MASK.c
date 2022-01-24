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
struct nvme_fc_queue {int /*<<< orphan*/  csn; scalar_t__ connection_id; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_FC_Q_CONNECTED ; 
 int /*<<< orphan*/  NVME_FC_Q_LIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct nvme_fc_queue *queue)
{
	if (!FUNC2(NVME_FC_Q_CONNECTED, &queue->flags))
		return;

	FUNC1(NVME_FC_Q_LIVE, &queue->flags);
	/*
	 * Current implementation never disconnects a single queue.
	 * It always terminates a whole association. So there is never
	 * a disconnect(queue) LS sent to the target.
	 */

	queue->connection_id = 0;
	FUNC0(&queue->csn, 0);
}