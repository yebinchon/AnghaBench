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
typedef  scalar_t__ uint32_t ;
struct tcmu_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ read_len; int /*<<< orphan*/  scsi_status; int /*<<< orphan*/  sense_buffer; } ;
struct TYPE_3__ {int uflags; } ;
struct tcmu_cmd_entry {TYPE_2__ rsp; TYPE_1__ hdr; } ;
struct tcmu_cmd {int /*<<< orphan*/  dbi_cnt; struct se_cmd* se_cmd; int /*<<< orphan*/  queue_entry; int /*<<< orphan*/  flags; struct tcmu_dev* tcmu_dev; } ;
struct se_cmd {scalar_t__ data_length; int se_cmd_flags; struct se_cmd* data_direction; } ;

/* Variables and functions */
 struct se_cmd* DMA_FROM_DEVICE ; 
 struct se_cmd* DMA_NONE ; 
 struct se_cmd* DMA_TO_DEVICE ; 
 int /*<<< orphan*/  SAM_STAT_CHECK_CONDITION ; 
 int SCF_BIDI ; 
 int SCF_TREAT_READ_AS_NORMAL ; 
 int /*<<< orphan*/  TCMU_CMD_BIT_EXPIRED ; 
 int TCMU_UFLAG_READ_LEN ; 
 int TCMU_UFLAG_UNKNOWN_OP ; 
 int /*<<< orphan*/  FUNC0 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcmu_dev*,struct tcmu_cmd*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct se_cmd*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct tcmu_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tcmu_cmd*) ; 
 int /*<<< orphan*/  FUNC9 (struct tcmu_cmd*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct se_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct tcmu_cmd *cmd, struct tcmu_cmd_entry *entry)
{
	struct se_cmd *se_cmd = cmd->se_cmd;
	struct tcmu_dev *udev = cmd->tcmu_dev;
	bool read_len_valid = false;
	uint32_t read_len;

	/*
	 * cmd has been completed already from timeout, just reclaim
	 * data area space and free cmd
	 */
	if (FUNC10(TCMU_CMD_BIT_EXPIRED, &cmd->flags)) {
		FUNC0(se_cmd);
		goto out;
	}

	FUNC2(&cmd->queue_entry);

	FUNC8(cmd);

	if (entry->hdr.uflags & TCMU_UFLAG_UNKNOWN_OP) {
		FUNC4("TCMU: Userspace set UNKNOWN_OP flag on se_cmd %p\n",
			cmd->se_cmd);
		entry->rsp.scsi_status = SAM_STAT_CHECK_CONDITION;
		goto done;
	}

	read_len = se_cmd->data_length;
	if (se_cmd->data_direction == DMA_FROM_DEVICE &&
	    (entry->hdr.uflags & TCMU_UFLAG_READ_LEN) && entry->rsp.read_len) {
		read_len_valid = true;
		if (entry->rsp.read_len < read_len)
			read_len = entry->rsp.read_len;
	}

	if (entry->rsp.scsi_status == SAM_STAT_CHECK_CONDITION) {
		FUNC11(se_cmd, entry->rsp.sense_buffer);
		if (!read_len_valid )
			goto done;
		else
			se_cmd->se_cmd_flags |= SCF_TREAT_READ_AS_NORMAL;
	}
	if (se_cmd->se_cmd_flags & SCF_BIDI) {
		/* Get Data-In buffer before clean up */
		FUNC1(udev, cmd, true, read_len);
	} else if (se_cmd->data_direction == DMA_FROM_DEVICE) {
		FUNC1(udev, cmd, false, read_len);
	} else if (se_cmd->data_direction == DMA_TO_DEVICE) {
		/* TODO: */
	} else if (se_cmd->data_direction != DMA_NONE) {
		FUNC4("TCMU: data direction was %d!\n",
			se_cmd->data_direction);
	}

done:
	if (read_len_valid) {
		FUNC3("read_len = %d\n", read_len);
		FUNC6(cmd->se_cmd,
					entry->rsp.scsi_status, read_len);
	} else
		FUNC5(cmd->se_cmd, entry->rsp.scsi_status);

out:
	cmd->se_cmd = NULL;
	FUNC7(cmd, cmd->dbi_cnt);
	FUNC9(cmd);
}