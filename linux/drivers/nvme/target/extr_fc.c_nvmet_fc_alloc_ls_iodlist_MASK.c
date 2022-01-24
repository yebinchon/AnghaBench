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
struct nvmet_fc_tgtport {int /*<<< orphan*/  dev; int /*<<< orphan*/  ls_list; struct nvmet_fc_ls_iod* iod; } ;
struct nvmet_fc_ls_iod {int /*<<< orphan*/  ls_list; struct nvmet_fc_ls_iod* rqstbuf; int /*<<< orphan*/  rspdma; struct nvmet_fc_ls_iod* rspbuf; struct nvmet_fc_tgtport* tgtport; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NVMET_LS_CTX_COUNT ; 
 int NVME_FC_MAX_LS_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nvmet_fc_ls_iod*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvmet_fc_ls_iod*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmet_fc_handle_ls_rqst_work ; 

__attribute__((used)) static int
FUNC8(struct nvmet_fc_tgtport *tgtport)
{
	struct nvmet_fc_ls_iod *iod;
	int i;

	iod = FUNC4(NVMET_LS_CTX_COUNT, sizeof(struct nvmet_fc_ls_iod),
			GFP_KERNEL);
	if (!iod)
		return -ENOMEM;

	tgtport->iod = iod;

	for (i = 0; i < NVMET_LS_CTX_COUNT; iod++, i++) {
		FUNC0(&iod->work, nvmet_fc_handle_ls_rqst_work);
		iod->tgtport = tgtport;
		FUNC6(&iod->ls_list, &tgtport->ls_list);

		iod->rqstbuf = FUNC4(2, NVME_FC_MAX_LS_BUFFER_SIZE,
			GFP_KERNEL);
		if (!iod->rqstbuf)
			goto out_fail;

		iod->rspbuf = iod->rqstbuf + NVME_FC_MAX_LS_BUFFER_SIZE;

		iod->rspdma = FUNC1(tgtport->dev, iod->rspbuf,
						NVME_FC_MAX_LS_BUFFER_SIZE,
						DMA_TO_DEVICE);
		if (FUNC2(tgtport->dev, iod->rspdma))
			goto out_fail;
	}

	return 0;

out_fail:
	FUNC5(iod->rqstbuf);
	FUNC7(&iod->ls_list);
	for (iod--, i--; i >= 0; iod--, i--) {
		FUNC3(tgtport->dev, iod->rspdma,
				NVME_FC_MAX_LS_BUFFER_SIZE, DMA_TO_DEVICE);
		FUNC5(iod->rqstbuf);
		FUNC7(&iod->ls_list);
	}

	FUNC5(iod);

	return -EFAULT;
}