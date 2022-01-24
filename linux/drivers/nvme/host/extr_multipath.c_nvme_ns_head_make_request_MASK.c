#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request_queue {struct nvme_ns_head* queuedata; } ;
struct nvme_ns_head {int /*<<< orphan*/  srcu; int /*<<< orphan*/  requeue_lock; int /*<<< orphan*/  requeue_list; int /*<<< orphan*/  disk; } ;
struct nvme_ns {TYPE_2__* head; TYPE_1__* disk; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {int /*<<< orphan*/  bi_status; TYPE_3__ bi_iter; TYPE_1__* bi_disk; int /*<<< orphan*/  bi_opf; } ;
typedef  int /*<<< orphan*/  blk_qc_t ;
struct TYPE_5__ {int /*<<< orphan*/  disk; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_QC_T_NONE ; 
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  REQ_NVME_MPATH ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,struct bio**) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct device* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct nvme_ns*) ; 
 scalar_t__ FUNC8 (struct nvme_ns_head*) ; 
 struct nvme_ns* FUNC9 (struct nvme_ns_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_qc_t FUNC15(struct request_queue *q,
		struct bio *bio)
{
	struct nvme_ns_head *head = q->queuedata;
	struct device *dev = FUNC6(head->disk);
	struct nvme_ns *ns;
	blk_qc_t ret = BLK_QC_T_NONE;
	int srcu_idx;

	/*
	 * The namespace might be going away and the bio might
	 * be moved to a different queue via blk_steal_bios(),
	 * so we need to use the bio_split pool from the original
	 * queue to allocate the bvecs from.
	 */
	FUNC2(q, &bio);

	srcu_idx = FUNC12(&head->srcu);
	ns = FUNC9(head);
	if (FUNC7(ns)) {
		bio->bi_disk = ns->disk;
		bio->bi_opf |= REQ_NVME_MPATH;
		FUNC14(bio->bi_disk->queue, bio,
				      FUNC5(ns->head->disk),
				      bio->bi_iter.bi_sector);
		ret = FUNC4(bio);
	} else if (FUNC8(head)) {
		FUNC3(dev, "no usable path - requeuing I/O\n");

		FUNC10(&head->requeue_lock);
		FUNC1(&head->requeue_list, bio);
		FUNC11(&head->requeue_lock);
	} else {
		FUNC3(dev, "no available path - failing I/O\n");

		bio->bi_status = BLK_STS_IOERR;
		FUNC0(bio);
	}

	FUNC13(&head->srcu, srcu_idx);
	return ret;
}