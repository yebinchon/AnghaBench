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
struct nvmet_fc_tgtport {int /*<<< orphan*/  lock; } ;
struct nvmet_fc_tgt_queue {int dummy; } ;
struct nvmet_fc_tgt_assoc {struct nvmet_fc_tgt_queue** queues; struct nvmet_fc_tgtport* tgtport; } ;

/* Variables and functions */
 int NVMET_NR_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct nvmet_fc_tgt_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_fc_tgt_assoc*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvmet_fc_tgt_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvmet_fc_tgt_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct nvmet_fc_tgt_assoc *assoc)
{
	struct nvmet_fc_tgtport *tgtport = assoc->tgtport;
	struct nvmet_fc_tgt_queue *queue;
	unsigned long flags;
	int i;

	FUNC4(&tgtport->lock, flags);
	for (i = NVMET_NR_QUEUES; i >= 0; i--) {
		queue = assoc->queues[i];
		if (queue) {
			if (!FUNC2(queue))
				continue;
			FUNC5(&tgtport->lock, flags);
			FUNC0(queue);
			FUNC3(queue);
			FUNC4(&tgtport->lock, flags);
		}
	}
	FUNC5(&tgtport->lock, flags);

	FUNC1(assoc);
}