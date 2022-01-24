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
typedef  scalar_t__ u8 ;
struct fc_seq {int dummy; } ;
struct TYPE_4__ {scalar_t__ port_name; } ;
struct fc_rport_priv {scalar_t__ rp_state; unsigned int r_a_tov; int /*<<< orphan*/  kref; int /*<<< orphan*/  rp_mutex; TYPE_2__ ids; struct fc_lport* local_port; } ;
struct fc_lport {scalar_t__ wwpn; } ;
struct fc_frame {int dummy; } ;
struct fc_els_ls_rjt {int /*<<< orphan*/  er_explan; int /*<<< orphan*/  er_reason; } ;
struct TYPE_3__ {int /*<<< orphan*/  sp_r_a_tov; } ;
struct fc_els_flogi {TYPE_1__ fl_csp; } ;

/* Variables and functions */
 scalar_t__ ELS_LS_ACC ; 
 scalar_t__ ELS_LS_RJT ; 
 struct fc_frame* FUNC0 (int /*<<< orphan*/ ) ; 
 int FC_EX_ALLOC_ERR ; 
 int /*<<< orphan*/  FC_EX_CLOSED ; 
 int FC_EX_ELS_RJT ; 
 int FC_EX_INV_LOGIN ; 
 int /*<<< orphan*/  FUNC1 (struct fc_rport_priv*,char*,...) ; 
 scalar_t__ FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*) ; 
 scalar_t__ RPORT_ST_FLOGI ; 
 int /*<<< orphan*/  RPORT_ST_PLOGI_WAIT ; 
 char* FUNC4 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_frame*) ; 
 void* FUNC6 (struct fc_frame*,int) ; 
 scalar_t__ FUNC7 (struct fc_frame*) ; 
 int /*<<< orphan*/  fc_rport_destroy ; 
 int /*<<< orphan*/  FUNC8 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_rport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_rport_priv*,int) ; 
 scalar_t__ FUNC11 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC12 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct fc_rport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct fc_seq *sp, struct fc_frame *fp,
				void *rp_arg)
{
	struct fc_rport_priv *rdata = rp_arg;
	struct fc_lport *lport = rdata->local_port;
	struct fc_els_flogi *flogi;
	unsigned int r_a_tov;
	u8 opcode;
	int err = 0;

	FUNC1(rdata, "Received a FLOGI %s\n",
		     FUNC2(fp) ? "error" : FUNC4(fp));

	if (fp == FUNC0(-FC_EX_CLOSED))
		goto put;

	FUNC15(&rdata->rp_mutex);

	if (rdata->rp_state != RPORT_ST_FLOGI) {
		FUNC1(rdata, "Received a FLOGI response, but in state "
			     "%s\n", FUNC12(rdata));
		if (FUNC2(fp))
			goto err;
		goto out;
	}

	if (FUNC2(fp)) {
		FUNC9(rdata, FUNC3(fp));
		goto err;
	}
	opcode = FUNC7(fp);
	if (opcode == ELS_LS_RJT) {
		struct fc_els_ls_rjt *rjt;

		rjt = FUNC6(fp, sizeof(*rjt));
		FUNC1(rdata, "FLOGI ELS rejected, reason %x expl %x\n",
			     rjt->er_reason, rjt->er_explan);
		err = -FC_EX_ELS_RJT;
		goto bad;
	} else if (opcode != ELS_LS_ACC) {
		FUNC1(rdata, "FLOGI ELS invalid opcode %x\n", opcode);
		err = -FC_EX_ELS_RJT;
		goto bad;
	}
	if (FUNC11(rdata, fp)) {
		FUNC1(rdata, "FLOGI failed, no login\n");
		err = -FC_EX_INV_LOGIN;
		goto bad;
	}

	flogi = FUNC6(fp, sizeof(*flogi));
	if (!flogi) {
		err = -FC_EX_ALLOC_ERR;
		goto bad;
	}
	r_a_tov = FUNC17(flogi->fl_csp.sp_r_a_tov);
	if (r_a_tov > rdata->r_a_tov)
		rdata->r_a_tov = r_a_tov;

	if (rdata->ids.port_name < lport->wwpn)
		FUNC8(rdata);
	else
		FUNC13(rdata, RPORT_ST_PLOGI_WAIT);
out:
	FUNC5(fp);
err:
	FUNC16(&rdata->rp_mutex);
put:
	FUNC14(&rdata->kref, fc_rport_destroy);
	return;
bad:
	FUNC1(rdata, "Bad FLOGI response\n");
	FUNC10(rdata, err);
	goto out;
}