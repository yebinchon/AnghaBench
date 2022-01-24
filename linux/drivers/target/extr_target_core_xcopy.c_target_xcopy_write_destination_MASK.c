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
typedef  int u32 ;
struct se_cmd {int /*<<< orphan*/  se_cmd_flags; int /*<<< orphan*/  scsi_status; int /*<<< orphan*/  t_data_nents; int /*<<< orphan*/  t_data_sg; } ;
struct xcopy_pt_cmd {struct se_cmd se_cmd; int /*<<< orphan*/ * sense_buffer; int /*<<< orphan*/  xpt_passthrough_sem; } ;
struct xcopy_op {scalar_t__ op_origin; int /*<<< orphan*/  xop_data_nents; int /*<<< orphan*/  xop_data_sg; TYPE_2__* src_pt_cmd; struct xcopy_pt_cmd* dst_pt_cmd; } ;
struct TYPE_3__ {int block_size; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_4__ {struct se_cmd se_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC ; 
 unsigned char WRITE_16 ; 
 scalar_t__ XCOL_SOURCE_RECV_OP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct xcopy_pt_cmd* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long long,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned char*) ; 
 int FUNC7 (struct xcopy_pt_cmd*) ; 
 int FUNC8 (struct xcopy_pt_cmd*,struct xcopy_op*,struct se_device*,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct se_cmd*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xcopy_pt_sess ; 
 int /*<<< orphan*/  xcopy_pt_tfo ; 

__attribute__((used)) static int FUNC11(
	struct se_cmd *ec_cmd,
	struct xcopy_op *xop,
	struct se_device *dst_dev,
	sector_t dst_lba,
	u32 dst_sectors)
{
	struct xcopy_pt_cmd *xpt_cmd;
	struct se_cmd *se_cmd;
	u32 length = (dst_sectors * dst_dev->dev_attrib.block_size);
	int rc;
	unsigned char cdb[16];
	bool remote_port = (xop->op_origin == XCOL_SOURCE_RECV_OP);

	xpt_cmd = FUNC1(sizeof(struct xcopy_pt_cmd), GFP_KERNEL);
	if (!xpt_cmd) {
		FUNC4("Unable to allocate xcopy_pt_cmd\n");
		return -ENOMEM;
	}
	FUNC0(&xpt_cmd->xpt_passthrough_sem);
	se_cmd = &xpt_cmd->se_cmd;

	FUNC2(&cdb[0], 0, 16);
	cdb[0] = WRITE_16;
	FUNC6(dst_lba, &cdb[2]);
	FUNC5(dst_sectors, &cdb[10]);
	FUNC3("XCOPY: Built WRITE_16: LBA: %llu Sectors: %u Length: %u\n",
		(unsigned long long)dst_lba, dst_sectors, length);

	FUNC10(se_cmd, &xcopy_pt_tfo, &xcopy_pt_sess, length,
			      DMA_TO_DEVICE, 0, &xpt_cmd->sense_buffer[0]);
	xop->dst_pt_cmd = xpt_cmd;

	rc = FUNC8(xpt_cmd, xop, dst_dev, &cdb[0],
				remote_port, false);
	if (rc < 0) {
		struct se_cmd *src_cmd = &xop->src_pt_cmd->se_cmd;
		ec_cmd->scsi_status = xpt_cmd->se_cmd.scsi_status;
		/*
		 * If the failure happened before the t_mem_list hand-off in
		 * target_xcopy_setup_pt_cmd(), Reset memory + clear flag so that
		 * core releases this memory on error during X-COPY WRITE I/O.
		 */
		src_cmd->se_cmd_flags &= ~SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC;
		src_cmd->t_data_sg = xop->xop_data_sg;
		src_cmd->t_data_nents = xop->xop_data_nents;

		FUNC9(se_cmd, 0);
		return rc;
	}

	rc = FUNC7(xpt_cmd);
	if (rc < 0) {
		ec_cmd->scsi_status = xpt_cmd->se_cmd.scsi_status;
		se_cmd->se_cmd_flags &= ~SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC;
		FUNC9(se_cmd, 0);
		return rc;
	}

	return 0;
}