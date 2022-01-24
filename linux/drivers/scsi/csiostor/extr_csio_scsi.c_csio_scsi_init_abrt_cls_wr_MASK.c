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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct fw_scsi_abrt_cls_wr {uintptr_t cookie; int sub_opcode_to_chk_all_io; uintptr_t t_cookie; scalar_t__* r3; scalar_t__ tmo_val; int /*<<< orphan*/  iqid; void* flowid_len16; void* op_immdlen; } ;
struct csio_rnode {int /*<<< orphan*/  flowid; } ;
struct csio_ioreq {scalar_t__ tmo; int /*<<< orphan*/  iq_idx; struct csio_rnode* rnode; TYPE_1__* lnode; } ;
struct csio_hw {int dummy; } ;
struct TYPE_2__ {struct csio_hw* hwp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FW_SCSI_ABRT_CLS_WR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct csio_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC9(struct csio_ioreq *req, void *addr, uint32_t size,
			   bool abort)
{
	struct csio_hw *hw = req->lnode->hwp;
	struct csio_rnode *rn = req->rnode;
	struct fw_scsi_abrt_cls_wr *wr = (struct fw_scsi_abrt_cls_wr *)addr;

	wr->op_immdlen = FUNC7(FUNC5(FW_SCSI_ABRT_CLS_WR));
	wr->flowid_len16 = FUNC7(FUNC3(rn->flowid) |
					    FUNC4(
						FUNC0(size, 16)));

	wr->cookie = (uintptr_t) req;
	wr->iqid = FUNC6(FUNC8(hw, req->iq_idx));
	wr->tmo_val = (uint8_t) req->tmo;
	/* 0 for CHK_ALL_IO tells FW to look up t_cookie */
	wr->sub_opcode_to_chk_all_io =
				(FUNC2(abort) |
				 FUNC1(0));
	wr->r3[0] = 0;
	wr->r3[1] = 0;
	wr->r3[2] = 0;
	wr->r3[3] = 0;
	/* Since we re-use the same ioreq for abort as well */
	wr->t_cookie = (uintptr_t) req;
}