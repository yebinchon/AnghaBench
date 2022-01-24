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
typedef  int /*<<< orphan*/  u32 ;
struct fc_seq_els_data {void* explan; int /*<<< orphan*/  reason; } ;
struct TYPE_3__ {void* port_name; void* node_name; } ;
struct fc_rport_priv {int rp_state; int /*<<< orphan*/  rp_mutex; int /*<<< orphan*/  maxframe_size; TYPE_1__ ids; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* frame_send ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_disc {int /*<<< orphan*/  disc_mutex; } ;
struct fc_lport {TYPE_2__ tt; int /*<<< orphan*/  mfs; void* wwpn; struct fc_disc disc; int /*<<< orphan*/  lp_mutex; } ;
struct fc_frame {int dummy; } ;
struct fc_els_flogi {int /*<<< orphan*/  fl_wwnn; int /*<<< orphan*/  fl_wwpn; } ;

/* Variables and functions */
 void* ELS_EXPL_INSUF_RES ; 
 void* ELS_EXPL_INV_LEN ; 
 void* ELS_EXPL_NONE ; 
 int /*<<< orphan*/  ELS_LS_ACC ; 
 int /*<<< orphan*/  ELS_LS_RJT ; 
 int /*<<< orphan*/  ELS_RJT_BUSY ; 
 int /*<<< orphan*/  ELS_RJT_INPROG ; 
 int /*<<< orphan*/  ELS_RJT_LOGIC ; 
 int /*<<< orphan*/  ELS_RJT_PROT ; 
 int /*<<< orphan*/  ELS_RJT_UNAB ; 
 int /*<<< orphan*/  FC_RCTL_ELS_REP ; 
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*,int /*<<< orphan*/ ,char*) ; 
#define  RPORT_ST_ADISC 136 
#define  RPORT_ST_DELETE 135 
#define  RPORT_ST_FLOGI 134 
#define  RPORT_ST_INIT 133 
#define  RPORT_ST_PLOGI 132 
#define  RPORT_ST_PLOGI_WAIT 131 
#define  RPORT_ST_PRLI 130 
#define  RPORT_ST_READY 129 
#define  RPORT_ST_RTV 128 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fc_frame* FUNC3 (struct fc_lport*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_frame*) ; 
 struct fc_els_flogi* FUNC5 (struct fc_frame*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_lport*,struct fc_frame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_els_flogi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_lport*,struct fc_rport_priv*) ; 
 struct fc_rport_priv* FUNC10 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct fc_frame*,int /*<<< orphan*/ ,struct fc_seq_els_data*) ; 
 void* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct fc_lport*,struct fc_frame*) ; 

__attribute__((used)) static void FUNC19(struct fc_lport *lport,
				    struct fc_frame *rx_fp)
{
	struct fc_disc *disc;
	struct fc_rport_priv *rdata;
	struct fc_frame *fp = rx_fp;
	struct fc_els_flogi *pl;
	struct fc_seq_els_data rjt_data;
	u32 sid;

	FUNC15(&lport->lp_mutex);

	sid = FUNC6(fp);

	FUNC1(lport, sid, "Received PLOGI request\n");

	pl = FUNC5(fp, sizeof(*pl));
	if (!pl) {
		FUNC1(lport, sid, "Received PLOGI too short\n");
		rjt_data.reason = ELS_RJT_PROT;
		rjt_data.explan = ELS_EXPL_INV_LEN;
		goto reject;
	}

	disc = &lport->disc;
	FUNC16(&disc->disc_mutex);
	rdata = FUNC10(lport, sid);
	if (!rdata) {
		FUNC17(&disc->disc_mutex);
		rjt_data.reason = ELS_RJT_UNAB;
		rjt_data.explan = ELS_EXPL_INSUF_RES;
		goto reject;
	}

	FUNC16(&rdata->rp_mutex);
	FUNC17(&disc->disc_mutex);

	rdata->ids.port_name = FUNC14(&pl->fl_wwpn);
	rdata->ids.node_name = FUNC14(&pl->fl_wwnn);

	/*
	 * If the rport was just created, possibly due to the incoming PLOGI,
	 * set the state appropriately and accept the PLOGI.
	 *
	 * If we had also sent a PLOGI, and if the received PLOGI is from a
	 * higher WWPN, we accept it, otherwise an LS_RJT is sent with reason
	 * "command already in progress".
	 *
	 * XXX TBD: If the session was ready before, the PLOGI should result in
	 * all outstanding exchanges being reset.
	 */
	switch (rdata->rp_state) {
	case RPORT_ST_INIT:
		FUNC0(rdata, "Received PLOGI in INIT state\n");
		break;
	case RPORT_ST_PLOGI_WAIT:
		FUNC0(rdata, "Received PLOGI in PLOGI_WAIT state\n");
		break;
	case RPORT_ST_PLOGI:
		FUNC0(rdata, "Received PLOGI in PLOGI state\n");
		if (rdata->ids.port_name < lport->wwpn) {
			FUNC17(&rdata->rp_mutex);
			rjt_data.reason = ELS_RJT_INPROG;
			rjt_data.explan = ELS_EXPL_NONE;
			goto reject;
		}
		break;
	case RPORT_ST_PRLI:
	case RPORT_ST_RTV:
	case RPORT_ST_READY:
	case RPORT_ST_ADISC:
		FUNC0(rdata, "Received PLOGI in logged-in state %d "
			     "- ignored for now\n", rdata->rp_state);
		/* XXX TBD - should reset */
		break;
	case RPORT_ST_FLOGI:
	case RPORT_ST_DELETE:
		FUNC0(rdata, "Received PLOGI in state %s - send busy\n",
			     FUNC12(rdata));
		FUNC17(&rdata->rp_mutex);
		rjt_data.reason = ELS_RJT_BUSY;
		rjt_data.explan = ELS_EXPL_NONE;
		goto reject;
	}
	if (!FUNC9(lport, rdata)) {
		FUNC0(rdata, "Received PLOGI for incompatible role\n");
		FUNC17(&rdata->rp_mutex);
		rjt_data.reason = ELS_RJT_LOGIC;
		rjt_data.explan = ELS_EXPL_NONE;
		goto reject;
	}

	/*
	 * Get session payload size from incoming PLOGI.
	 */
	rdata->maxframe_size = FUNC8(pl, lport->mfs);

	/*
	 * Send LS_ACC.	 If this fails, the originator should retry.
	 */
	fp = FUNC3(lport, sizeof(*pl));
	if (!fp)
		goto out;

	FUNC7(lport, fp, ELS_LS_ACC);
	FUNC2(fp, rx_fp, FC_RCTL_ELS_REP, 0);
	lport->tt.frame_send(lport, fp);
	FUNC11(rdata);
out:
	FUNC17(&rdata->rp_mutex);
	FUNC4(rx_fp);
	return;

reject:
	FUNC13(fp, ELS_LS_RJT, &rjt_data);
	FUNC4(fp);
}