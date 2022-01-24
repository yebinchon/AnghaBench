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
struct TYPE_4__ {int /*<<< orphan*/  sm_list; } ;
struct csio_ioreq {TYPE_2__ sm; int /*<<< orphan*/  wr_status; int /*<<< orphan*/  eq_idx; int /*<<< orphan*/  drv_status; TYPE_1__* lnode; } ;
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
 int /*<<< orphan*/  SCSI_ABORT ; 
 int /*<<< orphan*/  SCSI_CLOSE ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,char*,int,struct csio_ioreq*) ; 
 struct csio_scsim* FUNC3 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_ioreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  csio_scsis_aborting ; 
 int /*<<< orphan*/  csio_scsis_closing ; 
 int /*<<< orphan*/  csio_scsis_uninit ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_tm_active ; 

__attribute__((used)) static void
FUNC8(struct csio_ioreq *req, enum csio_scsi_ev evt)
{
	struct csio_hw *hw = req->lnode->hwp;
	struct csio_scsim *scm = FUNC3(hw);

	switch (evt) {
	case CSIO_SCSIE_COMPLETED:
		FUNC1(scm, n_tm_active);
		FUNC7(&req->sm.sm_list);
		FUNC5(&req->sm, csio_scsis_uninit);

		break;

	case CSIO_SCSIE_ABORT:
		FUNC4(req, SCSI_ABORT);
		if (req->drv_status == 0) {
			FUNC6(hw, req->eq_idx, false);
			FUNC5(&req->sm, csio_scsis_aborting);
		}
		break;


	case CSIO_SCSIE_CLOSE:
		FUNC4(req, SCSI_CLOSE);
		if (req->drv_status == 0) {
			FUNC6(hw, req->eq_idx, false);
			FUNC5(&req->sm, csio_scsis_closing);
		}
		break;

	case CSIO_SCSIE_DRVCLEANUP:
		req->wr_status = FW_HOSTERROR;
		FUNC1(scm, n_tm_active);
		FUNC5(&req->sm, csio_scsis_uninit);
		break;

	default:
		FUNC2(hw, "Unhandled event:%d sent to req:%p\n", evt, req);
		FUNC0(0);
	}
}