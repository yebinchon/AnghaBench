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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct usbg_tpg {int /*<<< orphan*/  workqueue; struct tcm_usbg_nexus* tpg_nexus; } ;
struct usbg_cmd {int tag; int /*<<< orphan*/  se_cmd; int /*<<< orphan*/  work; int /*<<< orphan*/  unpacked_lun; int /*<<< orphan*/  prio_attr; int /*<<< orphan*/ * stream; int /*<<< orphan*/  cmd_buf; } ;
struct tcm_usbg_nexus {int dummy; } ;
struct f_uas {int flags; int /*<<< orphan*/ * stream; struct usbg_tpg* tpg; } ;
struct command_iu {scalar_t__ iu_id; int len; int prio_attr; int /*<<< orphan*/  lun; int /*<<< orphan*/  cdb; int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct usbg_cmd*) ; 
 scalar_t__ IU_ID_COMMAND ; 
 int /*<<< orphan*/  TCM_ACA_TAG ; 
 int /*<<< orphan*/  TCM_HEAD_TAG ; 
 int /*<<< orphan*/  TCM_ORDERED_TAG ; 
 int /*<<< orphan*/  TCM_SIMPLE_TAG ; 
 int UASP_SS_EP_COMP_NUM_STREAMS ; 
#define  UAS_ACA 131 
#define  UAS_HEAD_TAG 130 
#define  UAS_ORDERED_TAG 129 
#define  UAS_SIMPLE_TAG 128 
 int USBG_MAX_CMD ; 
 int USBG_USE_STREAMS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usbg_cmd_work ; 
 struct usbg_cmd* FUNC8 (struct f_uas*,struct tcm_usbg_nexus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct f_uas *fu,
		void *cmdbuf, unsigned int len)
{
	struct command_iu *cmd_iu = cmdbuf;
	struct usbg_cmd *cmd;
	struct usbg_tpg *tpg = fu->tpg;
	struct tcm_usbg_nexus *tv_nexus;
	u32 cmd_len;
	u16 scsi_tag;

	if (cmd_iu->iu_id != IU_ID_COMMAND) {
		FUNC5("Unsupported type %d\n", cmd_iu->iu_id);
		return -EINVAL;
	}

	tv_nexus = tpg->tpg_nexus;
	if (!tv_nexus) {
		FUNC5("Missing nexus, ignoring command\n");
		return -EINVAL;
	}

	cmd_len = (cmd_iu->len & ~0x3) + 16;
	if (cmd_len > USBG_MAX_CMD)
		return -EINVAL;

	scsi_tag = FUNC2(&cmd_iu->tag);
	cmd = FUNC8(fu, tv_nexus, scsi_tag);
	if (FUNC1(cmd)) {
		FUNC5("usbg_get_cmd failed\n");
		return -ENOMEM;
	}
	FUNC3(cmd->cmd_buf, cmd_iu->cdb, cmd_len);

	if (fu->flags & USBG_USE_STREAMS) {
		if (cmd->tag > UASP_SS_EP_COMP_NUM_STREAMS)
			goto err;
		if (!cmd->tag)
			cmd->stream = &fu->stream[0];
		else
			cmd->stream = &fu->stream[cmd->tag - 1];
	} else {
		cmd->stream = &fu->stream[0];
	}

	switch (cmd_iu->prio_attr & 0x7) {
	case UAS_HEAD_TAG:
		cmd->prio_attr = TCM_HEAD_TAG;
		break;
	case UAS_ORDERED_TAG:
		cmd->prio_attr = TCM_ORDERED_TAG;
		break;
	case UAS_ACA:
		cmd->prio_attr = TCM_ACA_TAG;
		break;
	default:
		FUNC4("Unsupported prio_attr: %02x.\n",
				cmd_iu->prio_attr);
		/* fall through */
	case UAS_SIMPLE_TAG:
		cmd->prio_attr = TCM_SIMPLE_TAG;
		break;
	}

	cmd->unpacked_lun = FUNC7(&cmd_iu->lun);

	FUNC0(&cmd->work, usbg_cmd_work);
	FUNC6(tpg->workqueue, &cmd->work);

	return 0;
err:
	FUNC9(&cmd->se_cmd);
	return -EINVAL;
}