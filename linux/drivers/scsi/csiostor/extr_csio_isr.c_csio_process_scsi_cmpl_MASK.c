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
struct list_head {int dummy; } ;
struct fw_scsi_abrt_cls_wr {int /*<<< orphan*/  sub_opcode_to_chk_all_io; } ;
struct TYPE_2__ {int /*<<< orphan*/  sm_list; } ;
struct csio_ioreq {TYPE_1__ sm; int /*<<< orphan*/  wr_status; } ;
struct csio_hw {int /*<<< orphan*/  lock; } ;
struct csio_fl_dma_buf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FW_SCSI_ABRT_CLS_WR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,char*,char*,struct csio_ioreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,int /*<<< orphan*/ ,struct csio_ioreq*) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_ioreq*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_ioreq*,struct list_head*) ; 
 void* FUNC6 (struct csio_ioreq*) ; 
 struct csio_ioreq* FUNC7 (struct csio_hw*,void*,int /*<<< orphan*/ ,struct csio_fl_dma_buf*,int /*<<< orphan*/ *,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC8 (struct csio_ioreq*,struct list_head*) ; 
 scalar_t__ FUNC9 (struct csio_ioreq*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static void
FUNC14(struct csio_hw *hw, void *wr, uint32_t len,
			struct csio_fl_dma_buf *flb, void *cbfn_q)
{
	struct csio_ioreq *ioreq;
	uint8_t *scsiwr;
	uint8_t subop;
	void *cmnd;
	unsigned long flags;

	ioreq = FUNC7(hw, wr, len, flb, NULL, &scsiwr);
	if (FUNC9(ioreq)) {
		if (FUNC13(*scsiwr == FW_SCSI_ABRT_CLS_WR)) {
			subop = FUNC0(
					((struct fw_scsi_abrt_cls_wr *)
					    scsiwr)->sub_opcode_to_chk_all_io);

			FUNC1(hw, "%s cmpl recvd ioreq:%p status:%d\n",
				    subop ? "Close" : "Abort",
				    ioreq, ioreq->wr_status);

			FUNC11(&hw->lock, flags);
			if (subop)
				FUNC5(ioreq,
						 (struct list_head *)cbfn_q);
			else
				FUNC4(ioreq,
						  (struct list_head *)cbfn_q);
			/*
			 * We call scsi_done for I/Os that driver thinks aborts
			 * have timed out. If there is a race caused by FW
			 * completing abort at the exact same time that the
			 * driver has deteced the abort timeout, the following
			 * check prevents calling of scsi_done twice for the
			 * same command: once from the eh_abort_handler, another
			 * from csio_scsi_isr_handler(). This also avoids the
			 * need to check if csio_scsi_cmnd(req) is NULL in the
			 * fast path.
			 */
			cmnd = FUNC6(ioreq);
			if (FUNC13(cmnd == NULL))
				FUNC10(&ioreq->sm.sm_list);

			FUNC12(&hw->lock, flags);

			if (FUNC13(cmnd == NULL))
				FUNC3(hw,
						FUNC2(hw), ioreq);
		} else {
			FUNC11(&hw->lock, flags);
			FUNC8(ioreq, (struct list_head *)cbfn_q);
			FUNC12(&hw->lock, flags);
		}
	}
}