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
struct nvme_queue {int /*<<< orphan*/ * dbbuf_cq_ei; int /*<<< orphan*/ * dbbuf_sq_ei; int /*<<< orphan*/ * dbbuf_cq_db; int /*<<< orphan*/ * dbbuf_sq_db; } ;
struct nvme_dev {int /*<<< orphan*/  db_stride; int /*<<< orphan*/ * dbbuf_eis; int /*<<< orphan*/ * dbbuf_dbs; } ;

/* Variables and functions */
 size_t FUNC0 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nvme_dev *dev,
			    struct nvme_queue *nvmeq, int qid)
{
	if (!dev->dbbuf_dbs || !qid)
		return;

	nvmeq->dbbuf_sq_db = &dev->dbbuf_dbs[FUNC1(qid, dev->db_stride)];
	nvmeq->dbbuf_cq_db = &dev->dbbuf_dbs[FUNC0(qid, dev->db_stride)];
	nvmeq->dbbuf_sq_ei = &dev->dbbuf_eis[FUNC1(qid, dev->db_stride)];
	nvmeq->dbbuf_cq_ei = &dev->dbbuf_eis[FUNC0(qid, dev->db_stride)];
}