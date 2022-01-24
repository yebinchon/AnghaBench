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
struct nvmet_fc_tgtport {int /*<<< orphan*/  dev; } ;
struct nvmet_fc_tgt_queue {int sqsize; int /*<<< orphan*/  fod_list; struct nvmet_fc_fcp_iod* fod; } ;
struct nvmet_fc_fcp_iod {int active; int abort; int aborted; long rspdma; int /*<<< orphan*/  fcp_list; int /*<<< orphan*/  rspiubuf; int /*<<< orphan*/  flock; int /*<<< orphan*/ * fcpreq; struct nvmet_fc_tgt_queue* queue; struct nvmet_fc_tgtport* tgtport; int /*<<< orphan*/  defer_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmet_fc_fcp_rqst_op_defer_work ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct nvmet_fc_tgtport *tgtport,
				struct nvmet_fc_tgt_queue *queue)
{
	struct nvmet_fc_fcp_iod *fod = queue->fod;
	int i;

	for (i = 0; i < queue->sqsize; fod++, i++) {
		FUNC0(&fod->defer_work, nvmet_fc_fcp_rqst_op_defer_work);
		fod->tgtport = tgtport;
		fod->queue = queue;
		fod->active = false;
		fod->abort = false;
		fod->aborted = false;
		fod->fcpreq = NULL;
		FUNC4(&fod->fcp_list, &queue->fod_list);
		FUNC6(&fod->flock);

		fod->rspdma = FUNC1(tgtport->dev, &fod->rspiubuf,
					sizeof(fod->rspiubuf), DMA_TO_DEVICE);
		if (FUNC2(tgtport->dev, fod->rspdma)) {
			FUNC5(&fod->fcp_list);
			for (fod--, i--; i >= 0; fod--, i--) {
				FUNC3(tgtport->dev, fod->rspdma,
						sizeof(fod->rspiubuf),
						DMA_TO_DEVICE);
				fod->rspdma = 0L;
				FUNC5(&fod->fcp_list);
			}

			return;
		}
	}
}