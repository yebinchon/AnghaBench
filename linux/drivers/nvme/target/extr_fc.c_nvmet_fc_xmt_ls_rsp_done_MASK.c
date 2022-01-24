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
struct nvmet_fc_ls_iod {int /*<<< orphan*/  rspdma; struct nvmet_fc_tgtport* tgtport; } ;
struct nvmefc_tgt_ls_req {struct nvmet_fc_ls_iod* nvmet_fc_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  NVME_FC_MAX_LS_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_fc_tgtport*,struct nvmet_fc_ls_iod*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvmet_fc_tgtport*) ; 

__attribute__((used)) static void
FUNC3(struct nvmefc_tgt_ls_req *lsreq)
{
	struct nvmet_fc_ls_iod *iod = lsreq->nvmet_fc_private;
	struct nvmet_fc_tgtport *tgtport = iod->tgtport;

	FUNC0(tgtport->dev, iod->rspdma,
				NVME_FC_MAX_LS_BUFFER_SIZE, DMA_TO_DEVICE);
	FUNC1(tgtport, iod);
	FUNC2(tgtport);
}