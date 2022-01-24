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
struct TYPE_4__ {unsigned int max_write_same_len; int /*<<< orphan*/  emulate_tpws; } ;
struct se_device {TYPE_2__ dev_attrib; TYPE_1__* transport; } ;
struct se_cmd {scalar_t__ t_task_lba; scalar_t__ execute_cmd; int /*<<< orphan*/ * t_task_cdb; struct se_device* se_dev; } ;
struct sbc_ops {scalar_t__ execute_write_same; int /*<<< orphan*/  execute_unmap; } ;
typedef  scalar_t__ sense_reason_t ;
typedef  scalar_t__ sector_t ;
struct TYPE_3__ {scalar_t__ (* get_blocks ) (struct se_device*) ;} ;

/* Variables and functions */
 scalar_t__ TCM_ADDRESS_OUT_OF_RANGE ; 
 scalar_t__ TCM_INVALID_CDB_FIELD ; 
 scalar_t__ TCM_UNSUPPORTED_SCSI_OPCODE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (struct se_device*,struct se_cmd*,int /*<<< orphan*/ *,unsigned int,int) ; 
 scalar_t__ sbc_execute_write_same_unmap ; 
 unsigned int FUNC3 (struct se_cmd*) ; 
 scalar_t__ FUNC4 (struct se_device*) ; 

__attribute__((used)) static sense_reason_t
FUNC5(struct se_cmd *cmd, unsigned char *flags, struct sbc_ops *ops)
{
	struct se_device *dev = cmd->se_dev;
	sector_t end_lba = dev->transport->get_blocks(dev) + 1;
	unsigned int sectors = FUNC3(cmd);
	sense_reason_t ret;

	if ((flags[0] & 0x04) || (flags[0] & 0x02)) {
		FUNC0("WRITE_SAME PBDATA and LBDATA"
			" bits not supported for Block Discard"
			" Emulation\n");
		return TCM_UNSUPPORTED_SCSI_OPCODE;
	}
	if (sectors > cmd->se_dev->dev_attrib.max_write_same_len) {
		FUNC1("WRITE_SAME sectors: %u exceeds max_write_same_len: %u\n",
			sectors, cmd->se_dev->dev_attrib.max_write_same_len);
		return TCM_INVALID_CDB_FIELD;
	}
	/*
	 * Sanity check for LBA wrap and request past end of device.
	 */
	if (((cmd->t_task_lba + sectors) < cmd->t_task_lba) ||
	    ((cmd->t_task_lba + sectors) > end_lba)) {
		FUNC0("WRITE_SAME exceeds last lba %llu (lba %llu, sectors %u)\n",
		       (unsigned long long)end_lba, cmd->t_task_lba, sectors);
		return TCM_ADDRESS_OUT_OF_RANGE;
	}

	/* We always have ANC_SUP == 0 so setting ANCHOR is always an error */
	if (flags[0] & 0x10) {
		FUNC1("WRITE SAME with ANCHOR not supported\n");
		return TCM_INVALID_CDB_FIELD;
	}
	/*
	 * Special case for WRITE_SAME w/ UNMAP=1 that ends up getting
	 * translated into block discard requests within backend code.
	 */
	if (flags[0] & 0x08) {
		if (!ops->execute_unmap)
			return TCM_UNSUPPORTED_SCSI_OPCODE;

		if (!dev->dev_attrib.emulate_tpws) {
			FUNC0("Got WRITE_SAME w/ UNMAP=1, but backend device"
			       " has emulate_tpws disabled\n");
			return TCM_UNSUPPORTED_SCSI_OPCODE;
		}
		cmd->execute_cmd = sbc_execute_write_same_unmap;
		return 0;
	}
	if (!ops->execute_write_same)
		return TCM_UNSUPPORTED_SCSI_OPCODE;

	ret = FUNC2(dev, cmd, &cmd->t_task_cdb[0], sectors, true);
	if (ret)
		return ret;

	cmd->execute_cmd = ops->execute_write_same;
	return 0;
}