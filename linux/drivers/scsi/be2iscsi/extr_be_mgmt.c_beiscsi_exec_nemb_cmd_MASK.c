#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct be_ctrl_info {TYPE_2__* pdev; int /*<<< orphan*/  mbox_lock; TYPE_1__* ptag_state; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_sge {void* len; void* pa_lo; void* pa_hi; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int /*<<< orphan*/  dma; int /*<<< orphan*/  va; int /*<<< orphan*/  size; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {void (* cbfn ) (struct beiscsi_hba*,unsigned int) ;struct be_dma_mem tag_mem_state; int /*<<< orphan*/  tag_state; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MCC_TAG_STATE_ASYNC ; 
 struct be_mcc_wrb* FUNC0 (struct beiscsi_hba*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct be_mcc_wrb*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct beiscsi_hba*,unsigned int,int /*<<< orphan*/ *,struct be_dma_mem*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct be_sge* FUNC10 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct beiscsi_hba *phba,
				 struct be_dma_mem *nonemb_cmd,
				 void (*cbfn)(struct beiscsi_hba *,
					      unsigned int),
				 void *resp_buf, u32 resp_buf_len)
{
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_mcc_wrb *wrb;
	struct be_sge *sge;
	unsigned int tag;
	int rc = 0;

	FUNC8(&ctrl->mbox_lock);
	wrb = FUNC0(phba, &tag);
	if (!wrb) {
		FUNC9(&ctrl->mbox_lock);
		rc = -ENOMEM;
		goto free_cmd;
	}

	sge = FUNC10(wrb);
	FUNC2(wrb, nonemb_cmd->size, false, 1);
	sge->pa_hi = FUNC4(FUNC12(nonemb_cmd->dma));
	sge->pa_lo = FUNC4(FUNC6(nonemb_cmd->dma));
	sge->len = FUNC4(nonemb_cmd->size);

	if (cbfn) {
		struct be_dma_mem *tag_mem;

		FUNC11(MCC_TAG_STATE_ASYNC, &ctrl->ptag_state[tag].tag_state);
		ctrl->ptag_state[tag].cbfn = cbfn;
		tag_mem = &phba->ctrl.ptag_state[tag].tag_mem_state;

		/* store DMA mem to be freed in callback */
		tag_mem->size = nonemb_cmd->size;
		tag_mem->va = nonemb_cmd->va;
		tag_mem->dma = nonemb_cmd->dma;
	}
	FUNC1(phba, tag);
	FUNC9(&ctrl->mbox_lock);

	/* with cbfn set, its async cmd, don't wait */
	if (cbfn)
		return 0;

	rc = FUNC3(phba, tag, NULL, nonemb_cmd);

	/* copy the response, if any */
	if (resp_buf)
		FUNC7(resp_buf, nonemb_cmd->va, resp_buf_len);
	/**
	 * This is special case of NTWK_GET_IF_INFO where the size of
	 * response is not known. beiscsi_if_get_info checks the return
	 * value to free DMA buffer.
	 */
	if (rc == -EAGAIN)
		return rc;

	/**
	 * If FW is busy that is driver timed out, DMA buffer is saved with
	 * the tag, only when the cmd completes this buffer is freed.
	 */
	if (rc == -EBUSY)
		return rc;

free_cmd:
	FUNC5(&ctrl->pdev->dev, nonemb_cmd->size,
			    nonemb_cmd->va, nonemb_cmd->dma);
	return rc;
}