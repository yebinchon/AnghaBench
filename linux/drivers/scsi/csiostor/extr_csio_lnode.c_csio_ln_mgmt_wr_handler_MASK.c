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
typedef  int uint32_t ;
struct fw_fcoe_els_ct_wr {scalar_t__ cookie; } ;
struct TYPE_4__ {int /*<<< orphan*/  n_active; int /*<<< orphan*/  n_err; } ;
struct csio_mgmtm {TYPE_2__ stats; int /*<<< orphan*/  hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  sm_list; } ;
struct csio_ioreq {int /*<<< orphan*/  (* io_cbfn ) (struct csio_hw*,struct csio_ioreq*) ;TYPE_1__ sm; int /*<<< orphan*/  wr_status; } ;
struct csio_hw {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct csio_mgmtm* FUNC1 (struct csio_hw*) ; 
 scalar_t__ FUNC2 (struct csio_mgmtm*,struct csio_ioreq*) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_fcoe_els_ct_wr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_hw*,struct csio_ioreq*) ; 

__attribute__((used)) static void
FUNC8(struct csio_hw *hw, void *wr, uint32_t len)
{
	struct csio_mgmtm *mgmtm = FUNC1(hw);
	struct csio_ioreq *io_req = NULL;
	struct fw_fcoe_els_ct_wr *wr_cmd;


	wr_cmd = (struct fw_fcoe_els_ct_wr *) wr;

	if (len < sizeof(struct fw_fcoe_els_ct_wr)) {
		FUNC0(mgmtm->hw,
			 "Invalid ELS CT WR length recvd, len:%x\n", len);
		mgmtm->stats.n_err++;
		return;
	}

	io_req = (struct csio_ioreq *) ((uintptr_t) wr_cmd->cookie);
	io_req->wr_status = FUNC3(wr_cmd);

	/* lookup ioreq exists in our active Q */
	FUNC5(&hw->lock);
	if (FUNC2(mgmtm, io_req) != 0) {
		FUNC0(mgmtm->hw,
			"Error- Invalid IO handle recv in WR. handle: %p\n",
			io_req);
		mgmtm->stats.n_err++;
		FUNC6(&hw->lock);
		return;
	}

	mgmtm = FUNC1(hw);

	/* Dequeue from active queue */
	FUNC4(&io_req->sm.sm_list);
	mgmtm->stats.n_active--;
	FUNC6(&hw->lock);

	/* io_req will be freed by completion handler */
	if (io_req->io_cbfn)
		io_req->io_cbfn(hw, io_req);
}