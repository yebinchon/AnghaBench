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
typedef  int u32 ;
struct usbg_tpg {int /*<<< orphan*/  workqueue; struct tcm_usbg_nexus* tpg_nexus; } ;
struct TYPE_2__ {void* tag; } ;
struct usbg_cmd {int is_read; int /*<<< orphan*/  work; int /*<<< orphan*/  bot_tag; TYPE_1__ se_cmd; void* data_len; int /*<<< orphan*/  unpacked_lun; int /*<<< orphan*/  prio_attr; int /*<<< orphan*/  cmd_buf; } ;
struct tcm_usbg_nexus {int dummy; } ;
struct f_uas {struct usbg_tpg* tpg; } ;
struct bulk_cb_wrap {scalar_t__ Signature; int Length; int Flags; int /*<<< orphan*/  DataTransferLength; int /*<<< orphan*/  Lun; int /*<<< orphan*/  Tag; int /*<<< orphan*/  CDB; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct usbg_cmd*) ; 
 int /*<<< orphan*/  TCM_SIMPLE_TAG ; 
 int /*<<< orphan*/  US_BULK_CB_SIGN ; 
 int US_BULK_FLAG_IN ; 
 int /*<<< orphan*/  bot_cmd_work ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usbg_cmd* FUNC7 (struct f_uas*,struct tcm_usbg_nexus*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct f_uas *fu,
		void *cmdbuf, unsigned int len)
{
	struct bulk_cb_wrap *cbw = cmdbuf;
	struct usbg_cmd *cmd;
	struct usbg_tpg *tpg = fu->tpg;
	struct tcm_usbg_nexus *tv_nexus;
	u32 cmd_len;

	if (cbw->Signature != FUNC2(US_BULK_CB_SIGN)) {
		FUNC5("Wrong signature on CBW\n");
		return -EINVAL;
	}
	if (len != 31) {
		FUNC5("Wrong length for CBW\n");
		return -EINVAL;
	}

	cmd_len = cbw->Length;
	if (cmd_len < 1 || cmd_len > 16)
		return -EINVAL;

	tv_nexus = tpg->tpg_nexus;
	if (!tv_nexus) {
		FUNC5("Missing nexus, ignoring command\n");
		return -ENODEV;
	}

	cmd = FUNC7(fu, tv_nexus, cbw->Tag);
	if (FUNC1(cmd)) {
		FUNC5("usbg_get_cmd failed\n");
		return -ENOMEM;
	}
	FUNC4(cmd->cmd_buf, cbw->CDB, cmd_len);

	cmd->bot_tag = cbw->Tag;
	cmd->prio_attr = TCM_SIMPLE_TAG;
	cmd->unpacked_lun = cbw->Lun;
	cmd->is_read = cbw->Flags & US_BULK_FLAG_IN ? 1 : 0;
	cmd->data_len = FUNC3(cbw->DataTransferLength);
	cmd->se_cmd.tag = FUNC3(cmd->bot_tag);

	FUNC0(&cmd->work, bot_cmd_work);
	FUNC6(tpg->workqueue, &cmd->work);

	return 0;
}