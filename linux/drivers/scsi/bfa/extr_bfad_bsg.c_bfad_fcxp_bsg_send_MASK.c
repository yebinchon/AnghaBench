#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int /*<<< orphan*/  payload_len; } ;
struct TYPE_8__ {int /*<<< orphan*/  payload_len; } ;
struct bsg_job {TYPE_3__ reply_payload; TYPE_2__ request_payload; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa; } ;
struct bfad_fcxp {int /*<<< orphan*/  bfa_rport; struct bfa_fcxp_s* bfa_fcxp; int /*<<< orphan*/  num_rsp_sgles; int /*<<< orphan*/  num_req_sgles; TYPE_1__* port; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  s_id; } ;
struct TYPE_10__ {int /*<<< orphan*/  tsecs; TYPE_6__ fchs; int /*<<< orphan*/  cos; int /*<<< orphan*/  cts; int /*<<< orphan*/  vf_id; } ;
typedef  TYPE_4__ bfa_bsg_fcpt_t ;
struct TYPE_7__ {struct bfad_s* bfad; } ;

/* Variables and functions */
 int BFA_STATUS_ENOMEM ; 
 int BFA_STATUS_OK ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 struct bfa_fcxp_s* FUNC0 (struct bfad_fcxp*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcxp_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfad_fcxp_get_req_sgaddr_cb ; 
 int /*<<< orphan*/  bfad_fcxp_get_req_sglen_cb ; 
 int /*<<< orphan*/  bfad_fcxp_get_rsp_sgaddr_cb ; 
 int /*<<< orphan*/  bfad_fcxp_get_rsp_sglen_cb ; 
 int /*<<< orphan*/  bfad_send_fcpt_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC6(struct bsg_job *job, struct bfad_fcxp *drv_fcxp,
		   bfa_bsg_fcpt_t *bsg_fcpt)
{
	struct bfa_fcxp_s *hal_fcxp;
	struct bfad_s	*bfad = drv_fcxp->port->bfad;
	unsigned long	flags;
	uint8_t	lp_tag;

	FUNC4(&bfad->bfad_lock, flags);

	/* Allocate bfa_fcxp structure */
	hal_fcxp = FUNC0(drv_fcxp, &bfad->bfa,
				  drv_fcxp->num_req_sgles,
				  drv_fcxp->num_rsp_sgles,
				  bfad_fcxp_get_req_sgaddr_cb,
				  bfad_fcxp_get_req_sglen_cb,
				  bfad_fcxp_get_rsp_sgaddr_cb,
				  bfad_fcxp_get_rsp_sglen_cb, BFA_TRUE);
	if (!hal_fcxp) {
		FUNC3(bfad, 0);
		FUNC5(&bfad->bfad_lock, flags);
		return BFA_STATUS_ENOMEM;
	}

	drv_fcxp->bfa_fcxp = hal_fcxp;

	lp_tag = FUNC2(&bfad->bfa, bsg_fcpt->fchs.s_id);

	FUNC1(hal_fcxp, drv_fcxp->bfa_rport, bsg_fcpt->vf_id, lp_tag,
		      bsg_fcpt->cts, bsg_fcpt->cos,
		      job->request_payload.payload_len,
		      &bsg_fcpt->fchs, bfad_send_fcpt_cb, bfad,
		      job->reply_payload.payload_len, bsg_fcpt->tsecs);

	FUNC5(&bfad->bfad_lock, flags);

	return BFA_STATUS_OK;
}