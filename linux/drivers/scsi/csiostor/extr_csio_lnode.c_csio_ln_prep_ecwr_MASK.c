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
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct fw_fcoe_els_ct_wr {int /*<<< orphan*/  rsp_dmaaddr; void* rsp_dmalen; int /*<<< orphan*/  r_id; int /*<<< orphan*/  l_id; void* tmo_val; int /*<<< orphan*/  fl_to_sp; int /*<<< orphan*/  iqid; int /*<<< orphan*/  cookie; scalar_t__ cp_en_class; scalar_t__ ctl_pri; void* els_ct_type; void* flowid_len16; void* op_immdlen; } ;
struct TYPE_4__ {int len; int /*<<< orphan*/  paddr; } ;
struct csio_ioreq {TYPE_2__ dma_buf; scalar_t__ tmo; int /*<<< orphan*/  iq_idx; TYPE_1__* lnode; int /*<<< orphan*/  fw_handle; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {int /*<<< orphan*/  hwp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FW_FCOE_ELS_CT_WR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC13(struct csio_ioreq *io_req, uint32_t wr_len,
		      uint32_t immd_len, uint8_t sub_op, uint32_t sid,
		      uint32_t did, uint32_t flow_id, uint8_t *fw_wr)
{
	struct fw_fcoe_els_ct_wr *wr;
	__be32 port_id;

	wr  = (struct fw_fcoe_els_ct_wr *)fw_wr;
	wr->op_immdlen = FUNC8(FUNC5(FW_FCOE_ELS_CT_WR) |
				     FUNC1(immd_len));

	wr_len =  FUNC0(wr_len, 16);
	wr->flowid_len16 = FUNC8(FUNC3(flow_id) |
				       FUNC4(wr_len));
	wr->els_ct_type = sub_op;
	wr->ctl_pri = 0;
	wr->cp_en_class = 0;
	wr->cookie = io_req->fw_handle;
	wr->iqid = FUNC7(FUNC10(
					io_req->lnode->hwp, io_req->iq_idx));
	wr->fl_to_sp =  FUNC2(1);
	wr->tmo_val = (uint8_t) io_req->tmo;
	port_id = FUNC11(sid);
	FUNC12(wr->l_id, FUNC6(port_id), 3);
	port_id = FUNC11(did);
	FUNC12(wr->r_id, FUNC6(port_id), 3);

	/* Prepare RSP SGL */
	wr->rsp_dmalen = FUNC8(io_req->dma_buf.len);
	wr->rsp_dmaaddr = FUNC9(io_req->dma_buf.paddr);
	return 0;
}