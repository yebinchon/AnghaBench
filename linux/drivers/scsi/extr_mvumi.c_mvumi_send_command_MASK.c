#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mvumi_sgl {int dummy; } ;
struct mvumi_msg_frame {size_t tag; int sg_counts; scalar_t__ request_id; } ;
struct mvumi_hba {scalar_t__ fw_state; int hba_capability; struct mvumi_cmd** tag_cmd; int /*<<< orphan*/  io_seq; int /*<<< orphan*/  tag_pool; TYPE_1__* pdev; } ;
struct mvumi_dyn_list_entry {unsigned int if_length; void* src_high_addr; void* src_low_addr; } ;
struct mvumi_cmd {int /*<<< orphan*/  frame_phys; struct mvumi_msg_frame* frame; scalar_t__ request_id; } ;
typedef  enum mvumi_qc_result { ____Placeholder_mvumi_qc_result } mvumi_qc_result ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FW_STATE_STARTED ; 
 int HS_CAPABILITY_SUPPORT_DYN_SRC ; 
 int MV_QUEUE_COMMAND_RESULT_NO_RESOURCE ; 
 int MV_QUEUE_COMMAND_RESULT_SENT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct mvumi_msg_frame*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct mvumi_hba*,void**) ; 
 size_t FUNC5 (struct mvumi_hba*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum mvumi_qc_result FUNC9(struct mvumi_hba *mhba,
						struct mvumi_cmd *cmd)
{
	void *ib_entry;
	struct mvumi_msg_frame *ib_frame;
	unsigned int frame_len;

	ib_frame = cmd->frame;
	if (FUNC7(mhba->fw_state != FW_STATE_STARTED)) {
		FUNC1(&mhba->pdev->dev, "firmware not ready.\n");
		return MV_QUEUE_COMMAND_RESULT_NO_RESOURCE;
	}
	if (FUNC6(&mhba->tag_pool)) {
		FUNC1(&mhba->pdev->dev, "no free tag.\n");
		return MV_QUEUE_COMMAND_RESULT_NO_RESOURCE;
	}
	FUNC4(mhba, &ib_entry);

	cmd->frame->tag = FUNC5(mhba, &mhba->tag_pool);
	cmd->frame->request_id = mhba->io_seq++;
	cmd->request_id = cmd->frame->request_id;
	mhba->tag_cmd[cmd->frame->tag] = cmd;
	frame_len = sizeof(*ib_frame) - 4 +
				ib_frame->sg_counts * sizeof(struct mvumi_sgl);
	if (mhba->hba_capability & HS_CAPABILITY_SUPPORT_DYN_SRC) {
		struct mvumi_dyn_list_entry *dle;
		dle = ib_entry;
		dle->src_low_addr =
			FUNC0(FUNC2(cmd->frame_phys));
		dle->src_high_addr =
			FUNC0(FUNC8(cmd->frame_phys));
		dle->if_length = (frame_len >> 2) & 0xFFF;
	} else {
		FUNC3(ib_entry, ib_frame, frame_len);
	}
	return MV_QUEUE_COMMAND_RESULT_SENT;
}