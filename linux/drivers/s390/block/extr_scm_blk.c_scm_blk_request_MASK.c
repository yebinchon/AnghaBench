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
struct scm_request {TYPE_3__* aob; } ;
struct scm_queue {int /*<<< orphan*/  lock; struct scm_request* scmrq; } ;
struct scm_device {int /*<<< orphan*/  dev; } ;
struct scm_blk_dev {int dummy; } ;
struct request {int dummy; } ;
struct blk_mq_queue_data {scalar_t__ last; struct request* rq; } ;
struct blk_mq_hw_ctx {struct scm_queue* driver_data; TYPE_1__* queue; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_5__ {scalar_t__ msb_count; } ;
struct TYPE_6__ {TYPE_2__ request; } ;
struct TYPE_4__ {struct scm_device* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 struct scm_blk_dev* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ nr_requests_per_io ; 
 int /*<<< orphan*/  FUNC3 (struct scm_blk_dev*,struct request*) ; 
 struct scm_request* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct scm_blk_dev*,struct scm_request*) ; 
 scalar_t__ FUNC6 (struct scm_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct scm_request*,struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct scm_request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_status_t FUNC11(struct blk_mq_hw_ctx *hctx,
			   const struct blk_mq_queue_data *qd)
{
	struct scm_device *scmdev = hctx->queue->queuedata;
	struct scm_blk_dev *bdev = FUNC2(&scmdev->dev);
	struct scm_queue *sq = hctx->driver_data;
	struct request *req = qd->rq;
	struct scm_request *scmrq;

	FUNC9(&sq->lock);
	if (!FUNC3(bdev, req)) {
		FUNC10(&sq->lock);
		return BLK_STS_RESOURCE;
	}

	scmrq = sq->scmrq;
	if (!scmrq) {
		scmrq = FUNC4();
		if (!scmrq) {
			FUNC0(5, "no request");
			FUNC10(&sq->lock);
			return BLK_STS_RESOURCE;
		}
		FUNC5(bdev, scmrq);
		sq->scmrq = scmrq;
	}
	FUNC7(scmrq, req);

	if (FUNC6(scmrq)) {
		FUNC0(5, "aidaw alloc failed");
		FUNC7(scmrq, NULL);

		if (scmrq->aob->request.msb_count)
			FUNC8(scmrq);

		sq->scmrq = NULL;
		FUNC10(&sq->lock);
		return BLK_STS_RESOURCE;
	}
	FUNC1(req);

	if (qd->last || scmrq->aob->request.msb_count == nr_requests_per_io) {
		FUNC8(scmrq);
		sq->scmrq = NULL;
	}
	FUNC10(&sq->lock);
	return BLK_STS_OK;
}