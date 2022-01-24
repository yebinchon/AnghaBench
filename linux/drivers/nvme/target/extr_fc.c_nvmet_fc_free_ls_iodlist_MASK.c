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
struct nvmet_fc_tgtport {struct nvmet_fc_ls_iod* iod; int /*<<< orphan*/  dev; } ;
struct nvmet_fc_ls_iod {int /*<<< orphan*/  ls_list; struct nvmet_fc_ls_iod* rqstbuf; int /*<<< orphan*/  rspdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int NVMET_LS_CTX_COUNT ; 
 int /*<<< orphan*/  NVME_FC_MAX_LS_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_fc_ls_iod*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct nvmet_fc_tgtport *tgtport)
{
	struct nvmet_fc_ls_iod *iod = tgtport->iod;
	int i;

	for (i = 0; i < NVMET_LS_CTX_COUNT; iod++, i++) {
		FUNC0(tgtport->dev,
				iod->rspdma, NVME_FC_MAX_LS_BUFFER_SIZE,
				DMA_TO_DEVICE);
		FUNC1(iod->rqstbuf);
		FUNC2(&iod->ls_list);
	}
	FUNC1(tgtport->iod);
}