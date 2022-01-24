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
typedef  int /*<<< orphan*/  u64 ;
struct se_session {struct se_portal_group* se_tpg; } ;
struct se_portal_group {int /*<<< orphan*/  se_tpg_tfo; } ;
struct se_cmd {int /*<<< orphan*/  work; TYPE_1__* se_tmr_req; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  ref_task_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_NONE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TARGET_SCF_ACK_KREF ; 
 int TARGET_SCF_LOOKUP_LUN_FROM_TAG ; 
 int /*<<< orphan*/  TCM_SIMPLE_TAG ; 
 unsigned char TMR_ABORT_TASK ; 
 int FUNC2 (struct se_cmd*,void*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  target_complete_tmr_failure ; 
 int FUNC5 (struct se_cmd*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct se_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC8 (struct se_cmd*,int /*<<< orphan*/ ,struct se_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC9 (struct se_cmd*,int /*<<< orphan*/ ) ; 

int FUNC10(struct se_cmd *se_cmd, struct se_session *se_sess,
		unsigned char *sense, u64 unpacked_lun,
		void *fabric_tmr_ptr, unsigned char tm_type,
		gfp_t gfp, u64 tag, int flags)
{
	struct se_portal_group *se_tpg;
	int ret;

	se_tpg = se_sess->se_tpg;
	FUNC0(!se_tpg);

	FUNC8(se_cmd, se_tpg->se_tpg_tfo, se_sess,
			      0, DMA_NONE, TCM_SIMPLE_TAG, sense);
	/*
	 * FIXME: Currently expect caller to handle se_cmd->se_tmr_req
	 * allocation failure.
	 */
	ret = FUNC2(se_cmd, fabric_tmr_ptr, tm_type, gfp);
	if (ret < 0)
		return -ENOMEM;

	if (tm_type == TMR_ABORT_TASK)
		se_cmd->se_tmr_req->ref_task_tag = tag;

	/* See target_submit_cmd for commentary */
	ret = FUNC5(se_cmd, flags & TARGET_SCF_ACK_KREF);
	if (ret) {
		FUNC3(se_cmd->se_tmr_req);
		return ret;
	}
	/*
	 * If this is ABORT_TASK with no explicit fabric provided LUN,
	 * go ahead and search active session tags for a match to figure
	 * out unpacked_lun for the original se_cmd.
	 */
	if (tm_type == TMR_ABORT_TASK && (flags & TARGET_SCF_LOOKUP_LUN_FROM_TAG)) {
		if (!FUNC6(se_sess, tag, &unpacked_lun))
			goto failure;
	}

	ret = FUNC9(se_cmd, unpacked_lun);
	if (ret)
		goto failure;

	FUNC7(se_cmd);
	return 0;

	/*
	 * For callback during failure handling, push this work off
	 * to process context with TMR_LUN_DOES_NOT_EXIST status.
	 */
failure:
	FUNC1(&se_cmd->work, target_complete_tmr_failure);
	FUNC4(&se_cmd->work);
	return 0;
}