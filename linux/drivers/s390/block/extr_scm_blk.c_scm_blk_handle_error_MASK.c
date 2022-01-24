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
struct scm_request {scalar_t__ error; TYPE_3__* aob; struct scm_blk_dev* bdev; } ;
struct scm_blk_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  state; TYPE_1__* scmdev; } ;
struct TYPE_5__ {int eqc; } ;
struct TYPE_6__ {TYPE_2__ response; } ;
struct TYPE_4__ {scalar_t__ address; } ;

/* Variables and functions */
 scalar_t__ BLK_STS_IOERR ; 
#define  EQC_WR_PROHIBIT 128 
 int /*<<< orphan*/  SCM_WR_PROHIBIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct scm_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct scm_request *scmrq)
{
	struct scm_blk_dev *bdev = scmrq->bdev;
	unsigned long flags;

	if (scmrq->error != BLK_STS_IOERR)
		goto restart;

	/* For -EIO the response block is valid. */
	switch (scmrq->aob->response.eqc) {
	case EQC_WR_PROHIBIT:
		FUNC3(&bdev->lock, flags);
		if (bdev->state != SCM_WR_PROHIBIT)
			FUNC1("%lx: Write access to the SCM increment is suspended\n",
				(unsigned long) bdev->scmdev->address);
		bdev->state = SCM_WR_PROHIBIT;
		FUNC4(&bdev->lock, flags);
		goto requeue;
	default:
		break;
	}

restart:
	if (!FUNC0(scmrq->aob))
		return;

requeue:
	FUNC2(scmrq);
}