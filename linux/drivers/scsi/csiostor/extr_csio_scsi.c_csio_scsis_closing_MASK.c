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
struct csio_ioreq {TYPE_2__ sm; int /*<<< orphan*/  wr_status; int /*<<< orphan*/  drv_status; TYPE_1__* lnode; } ;
struct csio_hw {int dummy; } ;
typedef  enum csio_scsi_ev { ____Placeholder_csio_scsi_ev } csio_scsi_ev ;
struct TYPE_3__ {struct csio_hw* hwp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_scsim*,int /*<<< orphan*/ ) ; 
#define  CSIO_SCSIE_CLOSE 131 
#define  CSIO_SCSIE_CLOSED 130 
#define  CSIO_SCSIE_COMPLETED 129 
#define  CSIO_SCSIE_DRVCLEANUP 128 
 int /*<<< orphan*/  ECANCELED ; 
 int /*<<< orphan*/  FW_EINVAL ; 
 int /*<<< orphan*/  FW_HOSTERROR ; 
 int /*<<< orphan*/  FW_SCSI_CLOSE_REQUESTED ; 
 int /*<<< orphan*/  FW_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,char*,struct csio_ioreq*) ; 
 struct csio_scsim* FUNC4 (struct csio_hw*) ; 
 int /*<<< orphan*/  csio_scsis_uninit ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_active ; 

__attribute__((used)) static void
FUNC7(struct csio_ioreq *req, enum csio_scsi_ev evt)
{
	struct csio_hw *hw = req->lnode->hwp;
	struct csio_scsim *scm = FUNC4(hw);

	switch (evt) {
	case CSIO_SCSIE_COMPLETED:
		FUNC2(hw,
			 "ioreq %p recvd cmpltd (wr_status:%d) "
			 "in closing st\n", req, req->wr_status);
		/*
		 * Use -ECANCELED to explicitly tell the CLOSED event that
		 * the original I/O was returned to driver by FW.
		 * We dont really care if the I/O was returned with success by
		 * FW (because the CLOSE and completion of the I/O crossed each
		 * other), or any other return value. Once we are in aborting
		 * state, the success or failure of the I/O is unimportant to
		 * us.
		 */
		req->drv_status = -ECANCELED;
		break;

	case CSIO_SCSIE_CLOSED:
		/*
		 * Check if original I/O WR completed before the Close
		 * completion.
		 */
		if (req->drv_status != -ECANCELED) {
			FUNC3(hw,
				   "Close completed before original I/O,"
				   " req:%p\n", req);
			FUNC0(0);
		}

		/*
		 * Either close succeeded, or we issued close to FW at the
		 * same time FW compelted it to us. Either way, the I/O
		 * is closed.
		 */
		FUNC0((req->wr_status == FW_SUCCESS) ||
					(req->wr_status == FW_EINVAL));
		req->wr_status = FW_SCSI_CLOSE_REQUESTED;

		FUNC1(scm, n_active);
		FUNC6(&req->sm.sm_list);
		FUNC5(&req->sm, csio_scsis_uninit);
		break;

	case CSIO_SCSIE_CLOSE:
		break;

	case CSIO_SCSIE_DRVCLEANUP:
		req->wr_status = FW_HOSTERROR;
		FUNC1(scm, n_active);
		FUNC5(&req->sm, csio_scsis_uninit);
		break;

	default:
		FUNC2(hw, "Unhandled event:%d sent to req:%p\n", evt, req);
		FUNC0(0);
	}
}