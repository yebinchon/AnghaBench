#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct nvmet_fc_tgt_queue {size_t qid; size_t sqsize; int /*<<< orphan*/  work_q; int /*<<< orphan*/  nvme_sq; int /*<<< orphan*/  ref; int /*<<< orphan*/  qlock; int /*<<< orphan*/  zrspcnt; int /*<<< orphan*/  rsn; int /*<<< orphan*/  sqtail; int /*<<< orphan*/  connected; int /*<<< orphan*/  pending_cmd_list; int /*<<< orphan*/  avail_defer_list; int /*<<< orphan*/  fod_list; struct nvmet_fc_tgt_assoc* assoc; } ;
struct nvmet_fc_tgt_assoc {TYPE_2__* tgtport; struct nvmet_fc_tgt_queue** queues; int /*<<< orphan*/  a_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  port_num; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; TYPE_1__ fc_target_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t NVMET_NR_QUEUES ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_fc_tgt_queue*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fod ; 
 int /*<<< orphan*/  FUNC5 (struct nvmet_fc_tgt_queue*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct nvmet_fc_tgt_queue* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct nvmet_fc_tgt_queue*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct nvmet_fc_tgt_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct nvmet_fc_tgt_assoc*) ; 
 int /*<<< orphan*/  FUNC11 (struct nvmet_fc_tgt_assoc*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct nvmet_fc_tgt_queue*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static struct nvmet_fc_tgt_queue *
FUNC17(struct nvmet_fc_tgt_assoc *assoc,
			u16 qid, u16 sqsize)
{
	struct nvmet_fc_tgt_queue *queue;
	unsigned long flags;
	int ret;

	if (qid > NVMET_NR_QUEUES)
		return NULL;

	queue = FUNC7(FUNC16(queue, fod, sqsize), GFP_KERNEL);
	if (!queue)
		return NULL;

	if (!FUNC10(assoc))
		goto out_free_queue;

	queue->work_q = FUNC2("ntfc%d.%d.%d", 0, 0,
				assoc->tgtport->fc_target_port.port_num,
				assoc->a_id, qid);
	if (!queue->work_q)
		goto out_a_put;

	queue->qid = qid;
	queue->sqsize = sqsize;
	queue->assoc = assoc;
	FUNC0(&queue->fod_list);
	FUNC0(&queue->avail_defer_list);
	FUNC0(&queue->pending_cmd_list);
	FUNC3(&queue->connected, 0);
	FUNC3(&queue->sqtail, 0);
	FUNC3(&queue->rsn, 1);
	FUNC3(&queue->zrspcnt, 0);
	FUNC13(&queue->qlock);
	FUNC6(&queue->ref);

	FUNC9(assoc->tgtport, queue);

	ret = FUNC12(&queue->nvme_sq);
	if (ret)
		goto out_fail_iodlist;

	FUNC1(assoc->queues[qid]);
	FUNC14(&assoc->tgtport->lock, flags);
	assoc->queues[qid] = queue;
	FUNC15(&assoc->tgtport->lock, flags);

	return queue;

out_fail_iodlist:
	FUNC8(assoc->tgtport, queue);
	FUNC4(queue->work_q);
out_a_put:
	FUNC11(assoc);
out_free_queue:
	FUNC5(queue);
	return NULL;
}