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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct fw_scsi_read_wr {scalar_t__ cookie; } ;
struct fw_scsi_abrt_cls_wr {scalar_t__ cookie; } ;
struct csio_scsim {int dummy; } ;
struct csio_ioreq {scalar_t__ wr_status; } ;
struct csio_hw {int dummy; } ;
struct csio_fl_dma_buf {int dummy; } ;
struct cpl_fw6_msg {scalar_t__ opcode; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 scalar_t__ CPL_FW6_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_scsim*,int /*<<< orphan*/ ) ; 
 scalar_t__ FW_SCSI_ABRT_CLS_WR ; 
 scalar_t__ FW_SCSI_CMD_WR ; 
 scalar_t__ FW_SCSI_READ_WR ; 
 scalar_t__ FW_SCSI_WRITE_WR ; 
 struct csio_scsim* FUNC2 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  n_inval_cplop ; 
 int /*<<< orphan*/  n_inval_scsiop ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_ioreq*) ; 

struct csio_ioreq *
FUNC8(struct csio_hw *hw, void *wr, uint32_t len,
		     struct csio_fl_dma_buf *flb, void *priv, uint8_t **scsiwr)
{
	struct csio_ioreq *ioreq = NULL;
	struct cpl_fw6_msg *cpl;
	uint8_t *tempwr;
	uint8_t	status;
	struct csio_scsim *scm = FUNC2(hw);

	/* skip RSS header */
	cpl = (struct cpl_fw6_msg *)((uintptr_t)wr + sizeof(__be64));

	if (FUNC6(cpl->opcode != CPL_FW6_MSG)) {
		FUNC3(hw, "Error: Invalid CPL msg %x recvd on SCSI q\n",
			  cpl->opcode);
		FUNC1(scm, n_inval_cplop);
		return NULL;
	}

	tempwr = (uint8_t *)(cpl->data);
	status = FUNC4(tempwr);
	*scsiwr = tempwr;

	if (FUNC5((*tempwr == FW_SCSI_READ_WR) ||
			(*tempwr == FW_SCSI_WRITE_WR) ||
			(*tempwr == FW_SCSI_CMD_WR))) {
		ioreq = (struct csio_ioreq *)((uintptr_t)
				 (((struct fw_scsi_read_wr *)tempwr)->cookie));
		FUNC0(FUNC7(ioreq));

		ioreq->wr_status = status;

		return ioreq;
	}

	if (*tempwr == FW_SCSI_ABRT_CLS_WR) {
		ioreq = (struct csio_ioreq *)((uintptr_t)
			 (((struct fw_scsi_abrt_cls_wr *)tempwr)->cookie));
		FUNC0(FUNC7(ioreq));

		ioreq->wr_status = status;
		return ioreq;
	}

	FUNC3(hw, "WR with invalid opcode in SCSI IQ: %x\n", *tempwr);
	FUNC1(scm, n_inval_scsiop);
	return NULL;
}