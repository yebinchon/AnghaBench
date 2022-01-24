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
struct fc_seq_els_data {int /*<<< orphan*/  explan; int /*<<< orphan*/  reason; } ;
struct fc_rport_priv {int /*<<< orphan*/  rp_mutex; struct fc_lport* local_port; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* frame_send ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {TYPE_1__ tt; int /*<<< orphan*/  lp_mutex; } ;
struct fc_frame {int dummy; } ;
struct fc_els_adisc {int /*<<< orphan*/  adisc_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_EXPL_INV_LEN ; 
 int /*<<< orphan*/  ELS_LS_ACC ; 
 int /*<<< orphan*/  ELS_LS_RJT ; 
 int /*<<< orphan*/  ELS_RJT_PROT ; 
 int /*<<< orphan*/  FC_RCTL_ELS_REP ; 
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fc_frame* FUNC3 (struct fc_lport*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_frame*) ; 
 struct fc_els_adisc* FUNC5 (struct fc_frame*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_frame*,int /*<<< orphan*/ ,struct fc_seq_els_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_lport*,struct fc_frame*) ; 

__attribute__((used)) static void FUNC9(struct fc_rport_priv *rdata,
				    struct fc_frame *in_fp)
{
	struct fc_lport *lport = rdata->local_port;
	struct fc_frame *fp;
	struct fc_els_adisc *adisc;
	struct fc_seq_els_data rjt_data;

	FUNC7(&rdata->rp_mutex);
	FUNC7(&lport->lp_mutex);

	FUNC0(rdata, "Received ADISC request\n");

	adisc = FUNC5(in_fp, sizeof(*adisc));
	if (!adisc) {
		rjt_data.reason = ELS_RJT_PROT;
		rjt_data.explan = ELS_EXPL_INV_LEN;
		FUNC6(in_fp, ELS_LS_RJT, &rjt_data);
		goto drop;
	}

	fp = FUNC3(lport, sizeof(*adisc));
	if (!fp)
		goto drop;
	FUNC1(lport, fp);
	adisc = FUNC5(fp, sizeof(*adisc));
	adisc->adisc_cmd = ELS_LS_ACC;
	FUNC2(fp, in_fp, FC_RCTL_ELS_REP, 0);
	lport->tt.frame_send(lport, fp);
drop:
	FUNC4(in_fp);
}