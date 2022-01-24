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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int iov_cnt; int iov_bidi_cnt; int cdb_off; struct iovec* iov; } ;
struct TYPE_3__ {int /*<<< orphan*/  len_op; scalar_t__ cmd_id; scalar_t__ uflags; scalar_t__ kflags; } ;
struct tcmu_mailbox {int cmd_head; TYPE_2__ req; TYPE_1__ hdr; } ;
struct tcmu_dev {int cmdr_size; size_t data_size; int /*<<< orphan*/  uio_info; int /*<<< orphan*/  inflight_queue; int /*<<< orphan*/  cmd_timer; int /*<<< orphan*/  cmd_time_out; struct tcmu_mailbox* mb_addr; int /*<<< orphan*/  qfull_queue; int /*<<< orphan*/  flags; } ;
struct tcmu_cmd_entry {int cmd_head; TYPE_2__ req; TYPE_1__ hdr; } ;
struct tcmu_cmd {int dbi_cnt; int dbi_cur; int /*<<< orphan*/  flags; int /*<<< orphan*/  queue_entry; scalar_t__ cmd_id; struct se_cmd* se_cmd; struct tcmu_dev* tcmu_dev; } ;
struct se_cmd {scalar_t__ data_direction; int se_cmd_flags; int /*<<< orphan*/  t_task_cdb; int /*<<< orphan*/  t_bidi_data_nents; int /*<<< orphan*/  t_bidi_data_sg; int /*<<< orphan*/  t_data_nents; int /*<<< orphan*/  t_data_sg; } ;
struct iovec {int dummy; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;

/* Variables and functions */
 int CMDR_OFF ; 
 scalar_t__ DMA_TO_DEVICE ; 
 int SCF_BIDI ; 
 int /*<<< orphan*/  TCMU_CMD_BIT_INFLIGHT ; 
 int /*<<< orphan*/  TCMU_DEV_BIT_BLOCKED ; 
 int /*<<< orphan*/  TCMU_DEV_BIT_BROKEN ; 
 int /*<<< orphan*/  TCMU_OP_CMD ; 
 int /*<<< orphan*/  TCMU_OP_PAD ; 
 int /*<<< orphan*/  TCM_INVALID_CDB_FIELD ; 
 int /*<<< orphan*/  TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ; 
 int /*<<< orphan*/  TCM_LUN_BUSY ; 
 int /*<<< orphan*/  TCM_NO_SENSE ; 
 int /*<<< orphan*/  TCM_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (int,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct tcmu_cmd*) ; 
 size_t FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tcmu_dev*,struct tcmu_cmd*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tcmu_mailbox*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t,size_t,int,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct tcmu_dev*,struct tcmu_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iovec**,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct tcmu_cmd*,int) ; 
 size_t FUNC14 (int) ; 
 size_t FUNC15 (struct tcmu_cmd*,size_t) ; 
 size_t FUNC16 (struct tcmu_cmd*) ; 
 int /*<<< orphan*/  FUNC17 (struct tcmu_cmd*) ; 
 int /*<<< orphan*/  FUNC18 (struct tcmu_mailbox*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct tcmu_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24(struct tcmu_cmd *tcmu_cmd, sense_reason_t *scsi_err)
{
	struct tcmu_dev *udev = tcmu_cmd->tcmu_dev;
	struct se_cmd *se_cmd = tcmu_cmd->se_cmd;
	size_t base_command_size, command_size;
	struct tcmu_mailbox *mb;
	struct tcmu_cmd_entry *entry;
	struct iovec *iov;
	int iov_cnt, ret;
	uint32_t cmd_head;
	uint64_t cdb_off;
	bool copy_to_data_area;
	size_t data_length = FUNC16(tcmu_cmd);

	*scsi_err = TCM_NO_SENSE;

	if (FUNC22(TCMU_DEV_BIT_BLOCKED, &udev->flags)) {
		*scsi_err = TCM_LUN_BUSY;
		return -1;
	}

	if (FUNC22(TCMU_DEV_BIT_BROKEN, &udev->flags)) {
		*scsi_err = TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
		return -1;
	}

	/*
	 * Must be a certain minimum size for response sense info, but
	 * also may be larger if the iov array is large.
	 *
	 * We prepare as many iovs as possbile for potential uses here,
	 * because it's expensive to tell how many regions are freed in
	 * the bitmap & global data pool, as the size calculated here
	 * will only be used to do the checks.
	 *
	 * The size will be recalculated later as actually needed to save
	 * cmd area memories.
	 */
	base_command_size = FUNC14(tcmu_cmd->dbi_cnt);
	command_size = FUNC15(tcmu_cmd, base_command_size);

	if (!FUNC6(&udev->qfull_queue))
		goto queue;

	mb = udev->mb_addr;
	cmd_head = mb->cmd_head % udev->cmdr_size; /* UAM */
	if ((command_size > (udev->cmdr_size / 2)) ||
	    data_length > udev->data_size) {
		FUNC9("TCMU: Request of size %zu/%zu is too big for %u/%zu "
			"cmd ring/data area\n", command_size, data_length,
			udev->cmdr_size, udev->data_size);
		*scsi_err = TCM_INVALID_CDB_FIELD;
		return -1;
	}

	if (!FUNC4(udev, tcmu_cmd, command_size, data_length)) {
		/*
		 * Don't leave commands partially setup because the unmap
		 * thread might need the blocks to make forward progress.
		 */
		FUNC13(tcmu_cmd, tcmu_cmd->dbi_cur);
		FUNC17(tcmu_cmd);
		goto queue;
	}

	/* Insert a PAD if end-of-ring space is too small */
	if (FUNC3(cmd_head, udev->cmdr_size) < command_size) {
		size_t pad_size = FUNC3(cmd_head, udev->cmdr_size);

		entry = (void *) mb + CMDR_OFF + cmd_head;
		FUNC20(&entry->hdr.len_op, TCMU_OP_PAD);
		FUNC19(&entry->hdr.len_op, pad_size);
		entry->hdr.cmd_id = 0; /* not used for PAD */
		entry->hdr.kflags = 0;
		entry->hdr.uflags = 0;
		FUNC18(entry, sizeof(*entry));

		FUNC0(mb->cmd_head, pad_size, udev->cmdr_size);
		FUNC18(mb, sizeof(*mb));

		cmd_head = mb->cmd_head % udev->cmdr_size; /* UAM */
		FUNC1(cmd_head != 0);
	}

	entry = (void *) mb + CMDR_OFF + cmd_head;
	FUNC8(entry, 0, command_size);
	FUNC20(&entry->hdr.len_op, TCMU_OP_CMD);

	/* Handle allocating space from the data area */
	FUNC17(tcmu_cmd);
	iov = &entry->req.iov[0];
	iov_cnt = 0;
	copy_to_data_area = (se_cmd->data_direction == DMA_TO_DEVICE
		|| se_cmd->se_cmd_flags & SCF_BIDI);
	FUNC10(udev, tcmu_cmd, se_cmd->t_data_sg,
			  se_cmd->t_data_nents, &iov, &iov_cnt,
			  copy_to_data_area);
	entry->req.iov_cnt = iov_cnt;

	/* Handle BIDI commands */
	iov_cnt = 0;
	if (se_cmd->se_cmd_flags & SCF_BIDI) {
		iov++;
		FUNC10(udev, tcmu_cmd, se_cmd->t_bidi_data_sg,
				  se_cmd->t_bidi_data_nents, &iov, &iov_cnt,
				  false);
	}
	entry->req.iov_bidi_cnt = iov_cnt;

	ret = FUNC21(tcmu_cmd, udev->cmd_time_out,
				   &udev->cmd_timer);
	if (ret) {
		FUNC13(tcmu_cmd, tcmu_cmd->dbi_cnt);

		*scsi_err = TCM_OUT_OF_RESOURCES;
		return -1;
	}
	entry->hdr.cmd_id = tcmu_cmd->cmd_id;

	/*
	 * Recalaulate the command's base size and size according
	 * to the actual needs
	 */
	base_command_size = FUNC14(entry->req.iov_cnt +
						       entry->req.iov_bidi_cnt);
	command_size = FUNC15(tcmu_cmd, base_command_size);

	FUNC19(&entry->hdr.len_op, command_size);

	/* All offsets relative to mb_addr, not start of entry! */
	cdb_off = CMDR_OFF + cmd_head + base_command_size;
	FUNC7((void *) mb + cdb_off, se_cmd->t_task_cdb, FUNC11(se_cmd->t_task_cdb));
	entry->req.cdb_off = cdb_off;
	FUNC18(entry, sizeof(*entry));

	FUNC0(mb->cmd_head, command_size, udev->cmdr_size);
	FUNC18(mb, sizeof(*mb));

	FUNC5(&tcmu_cmd->queue_entry, &udev->inflight_queue);
	FUNC12(TCMU_CMD_BIT_INFLIGHT, &tcmu_cmd->flags);

	/* TODO: only if FLUSH and FUA? */
	FUNC23(&udev->uio_info);

	return 0;

queue:
	if (FUNC2(tcmu_cmd)) {
		*scsi_err = TCM_OUT_OF_RESOURCES;
		return -1;
	}

	return 1;
}