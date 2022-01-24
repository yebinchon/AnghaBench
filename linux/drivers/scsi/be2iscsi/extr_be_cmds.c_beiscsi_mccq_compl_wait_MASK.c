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
struct TYPE_4__ {TYPE_1__* ptag_state; int /*<<< orphan*/ * mcc_tag_status; int /*<<< orphan*/ * mcc_wait; } ;
struct beiscsi_hba {TYPE_2__ ctrl; int /*<<< orphan*/  state; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {scalar_t__ size; int /*<<< orphan*/  dma; int /*<<< orphan*/  va; } ;
struct TYPE_3__ {int /*<<< orphan*/  tag_state; struct be_dma_mem tag_mem_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_HBA_ONLINE ; 
 int /*<<< orphan*/  BEISCSI_HOST_MBX_TIMEOUT ; 
 int BEISCSI_LOG_CONFIG ; 
 int BEISCSI_LOG_EH ; 
 int BEISCSI_LOG_INIT ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 unsigned int MAX_MCC_CMD ; 
 int /*<<< orphan*/  MCC_TAG_STATE_RUNNING ; 
 int /*<<< orphan*/  MCC_TAG_STATE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC1 (struct beiscsi_hba*,unsigned int,struct be_mcc_wrb**,struct be_dma_mem*) ; 
 scalar_t__ FUNC2 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct beiscsi_hba*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(struct beiscsi_hba *phba,
			    unsigned int tag,
			    struct be_mcc_wrb **wrb,
			    struct be_dma_mem *mbx_cmd_mem)
{
	int rc = 0;

	if (!tag || tag > MAX_MCC_CMD) {
		FUNC0(phba, KERN_ERR,
			      "BC_%d : invalid tag %u\n", tag);
		return -EINVAL;
	}

	if (FUNC2(phba)) {
		FUNC4(MCC_TAG_STATE_RUNNING,
			  &phba->ctrl.ptag_state[tag].tag_state);
		return -EIO;
	}

	/* wait for the mccq completion */
	rc = FUNC9(phba->ctrl.mcc_wait[tag],
					      phba->ctrl.mcc_tag_status[tag],
					      FUNC6(
						BEISCSI_HOST_MBX_TIMEOUT));
	/**
	 * Return EIO if port is being disabled. Associated DMA memory, if any,
	 * is freed by the caller. When port goes offline, MCCQ is cleaned up
	 * so does WRB.
	 */
	if (!FUNC8(BEISCSI_HBA_ONLINE, &phba->state)) {
		FUNC4(MCC_TAG_STATE_RUNNING,
			  &phba->ctrl.ptag_state[tag].tag_state);
		return -EIO;
	}

	/**
	 * If MBOX cmd timeout expired, tag and resource allocated
	 * for cmd is not freed until FW returns completion.
	 */
	if (rc <= 0) {
		struct be_dma_mem *tag_mem;

		/**
		 * PCI/DMA memory allocated and posted in non-embedded mode
		 * will have mbx_cmd_mem != NULL.
		 * Save virtual and bus addresses for the command so that it
		 * can be freed later.
		 **/
		tag_mem = &phba->ctrl.ptag_state[tag].tag_mem_state;
		if (mbx_cmd_mem) {
			tag_mem->size = mbx_cmd_mem->size;
			tag_mem->va = mbx_cmd_mem->va;
			tag_mem->dma = mbx_cmd_mem->dma;
		} else
			tag_mem->size = 0;

		/* first make tag_mem_state visible to all */
		FUNC10();
		FUNC7(MCC_TAG_STATE_TIMEOUT,
				&phba->ctrl.ptag_state[tag].tag_state);

		FUNC3(phba, KERN_ERR,
			    BEISCSI_LOG_INIT | BEISCSI_LOG_EH |
			    BEISCSI_LOG_CONFIG,
			    "BC_%d : MBX Cmd Completion timed out\n");
		return -EBUSY;
	}

	rc = FUNC1(phba, tag, wrb, mbx_cmd_mem);

	FUNC5(&phba->ctrl, tag);
	return rc;
}