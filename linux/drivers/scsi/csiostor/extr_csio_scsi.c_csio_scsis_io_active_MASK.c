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
struct csio_scsim {int dummy; } ;
struct csio_rnode {int /*<<< orphan*/  host_cmpl_q; } ;
struct TYPE_4__ {int /*<<< orphan*/  sm_list; } ;
struct csio_ioreq {TYPE_2__ sm; int /*<<< orphan*/  wr_status; int /*<<< orphan*/  eq_idx; int /*<<< orphan*/  drv_status; struct csio_rnode* rnode; TYPE_1__* lnode; } ;
struct csio_hw {int dummy; } ;
typedef  enum csio_scsi_ev { ____Placeholder_csio_scsi_ev } csio_scsi_ev ;
struct TYPE_3__ {struct csio_hw* hwp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_scsim*,int /*<<< orphan*/ ) ; 
#define  CSIO_SCSIE_ABORT 131 
#define  CSIO_SCSIE_CLOSE 130 
#define  CSIO_SCSIE_COMPLETED 129 
#define  CSIO_SCSIE_DRVCLEANUP 128 
 int /*<<< orphan*/  FW_HOSTERROR ; 
 int /*<<< orphan*/  FW_SUCCESS ; 
 int /*<<< orphan*/  SCSI_ABORT ; 
 int /*<<< orphan*/  SCSI_CLOSE ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,char*,int,struct csio_ioreq*) ; 
 struct csio_scsim* FUNC3 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_rnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_ioreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  csio_scsis_aborting ; 
 int /*<<< orphan*/  csio_scsis_closing ; 
 int /*<<< orphan*/  csio_scsis_shost_cmpl_await ; 
 int /*<<< orphan*/  csio_scsis_uninit ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct csio_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_active ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12(struct csio_ioreq *req, enum csio_scsi_ev evt)
{
	struct csio_hw *hw = req->lnode->hwp;
	struct csio_scsim *scm = FUNC3(hw);
	struct csio_rnode *rn;

	switch (evt) {
	case CSIO_SCSIE_COMPLETED:
		FUNC1(scm, n_active);
		FUNC10(&req->sm.sm_list);
		FUNC7(&req->sm, csio_scsis_uninit);
		/*
		 * In MSIX mode, with multiple queues, the SCSI compeltions
		 * could reach us sooner than the FW events sent to indicate
		 * I-T nexus loss (link down, remote device logo etc). We
		 * dont want to be returning such I/Os to the upper layer
		 * immediately, since we wouldnt have reported the I-T nexus
		 * loss itself. This forces us to serialize such completions
		 * with the reporting of the I-T nexus loss. Therefore, we
		 * internally queue up such up such completions in the rnode.
		 * The reporting of I-T nexus loss to the upper layer is then
		 * followed by the returning of I/Os in this internal queue.
		 * Having another state alongwith another queue helps us take
		 * actions for events such as ABORT received while we are
		 * in this rnode queue.
		 */
		if (FUNC11(req->wr_status != FW_SUCCESS)) {
			rn = req->rnode;
			/*
			 * FW says remote device is lost, but rnode
			 * doesnt reflect it.
			 */
			if (FUNC6(req->wr_status) &&
						FUNC4(rn)) {
				FUNC7(&req->sm,
						csio_scsis_shost_cmpl_await);
				FUNC9(&req->sm.sm_list,
					      &rn->host_cmpl_q);
			}
		}

		break;

	case CSIO_SCSIE_ABORT:
		FUNC5(req, SCSI_ABORT);
		if (req->drv_status == 0) {
			FUNC8(hw, req->eq_idx, false);
			FUNC7(&req->sm, csio_scsis_aborting);
		}
		break;

	case CSIO_SCSIE_CLOSE:
		FUNC5(req, SCSI_CLOSE);
		if (req->drv_status == 0) {
			FUNC8(hw, req->eq_idx, false);
			FUNC7(&req->sm, csio_scsis_closing);
		}
		break;

	case CSIO_SCSIE_DRVCLEANUP:
		req->wr_status = FW_HOSTERROR;
		FUNC1(scm, n_active);
		FUNC7(&req->sm, csio_scsis_uninit);
		break;

	default:
		FUNC2(hw, "Unhandled event:%d sent to req:%p\n", evt, req);
		FUNC0(0);
	}
}