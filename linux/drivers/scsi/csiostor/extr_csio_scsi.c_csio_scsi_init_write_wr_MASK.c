#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ulptx_sgl {int dummy; } ;
struct scsi_cmnd {int dummy; } ;
struct TYPE_6__ {scalar_t__* r3_lo; scalar_t__ cp_en_class; scalar_t__ ctl_pri; } ;
struct TYPE_7__ {TYPE_2__ fcoe; } ;
struct fw_scsi_write_wr {uintptr_t cookie; int use_xfer_cnt; TYPE_3__ u; scalar_t__ r4; int /*<<< orphan*/  rsp_dmaaddr; void* rsp_dmalen; void* ini_xfer_cnt; void* xfer_cnt; scalar_t__ tmo_val; int /*<<< orphan*/  iqid; void* flowid_len16; void* op_immdlen; } ;
struct csio_rnode {int /*<<< orphan*/  flowid; } ;
struct csio_dma_buf {int len; int /*<<< orphan*/  paddr; } ;
struct csio_ioreq {struct csio_dma_buf dma_buf; scalar_t__ tmo; int /*<<< orphan*/  iq_idx; struct csio_rnode* rnode; TYPE_1__* lnode; } ;
struct csio_hw {int dummy; } ;
struct TYPE_8__ {scalar_t__ proto_cmd_len; } ;
struct TYPE_5__ {struct csio_hw* hwp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FW_SCSI_WRITE_WR ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 struct scsi_cmnd* FUNC11 (struct csio_ioreq*) ; 
 int /*<<< orphan*/  FUNC12 (struct csio_ioreq*,void*) ; 
 int /*<<< orphan*/  FUNC13 (struct csio_hw*,struct csio_ioreq*,struct ulptx_sgl*) ; 
 int FUNC14 (struct scsi_cmnd*) ; 

__attribute__((used)) static inline void
FUNC15(struct csio_ioreq *req, void *wrp, uint32_t size)
{
	struct csio_hw *hw = req->lnode->hwp;
	struct csio_rnode *rn = req->rnode;
	struct fw_scsi_write_wr *wr = (struct fw_scsi_write_wr *)wrp;
	struct ulptx_sgl *sgl;
	struct csio_dma_buf *dma_buf;
	uint8_t imm = FUNC9(hw)->proto_cmd_len;
	struct scsi_cmnd *scmnd = FUNC11(req);

	wr->op_immdlen = FUNC7(FUNC5(FW_SCSI_WRITE_WR) |
				     FUNC2(imm));
	wr->flowid_len16 = FUNC7(FUNC3(rn->flowid) |
				       FUNC4(FUNC1(size, 16)));
	wr->cookie = (uintptr_t)req;
	wr->iqid = FUNC6(FUNC10(hw, req->iq_idx));
	wr->tmo_val = (uint8_t)(req->tmo);
	wr->use_xfer_cnt = 1;
	wr->xfer_cnt = FUNC7(FUNC14(scmnd));
	wr->ini_xfer_cnt = FUNC7(FUNC14(scmnd));
	/* Get RSP DMA buffer */
	dma_buf = &req->dma_buf;

	/* Prepare RSP SGL */
	wr->rsp_dmalen = FUNC7(dma_buf->len);
	wr->rsp_dmaaddr = FUNC8(dma_buf->paddr);

	wr->r4 = 0;

	wr->u.fcoe.ctl_pri = 0;
	wr->u.fcoe.cp_en_class = 0;
	wr->u.fcoe.r3_lo[0] = 0;
	wr->u.fcoe.r3_lo[1] = 0;
	FUNC12(req, (void *)((uintptr_t)wrp +
					sizeof(struct fw_scsi_write_wr)));

	/* Move WR pointer past command and immediate data */
	sgl = (struct ulptx_sgl *)((uintptr_t)wrp +
			      sizeof(struct fw_scsi_write_wr) + FUNC0(imm, 16));

	/* Fill in the DSGL */
	FUNC13(hw, req, sgl);
}