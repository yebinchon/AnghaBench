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
struct fc_lport {TYPE_1__ tt; int /*<<< orphan*/  e_d_tov; int /*<<< orphan*/  r_a_tov; int /*<<< orphan*/  lp_mutex; } ;
struct fc_frame {int dummy; } ;
struct fc_els_rtv_acc {scalar_t__ rtv_toq; void* rtv_e_d_tov; void* rtv_r_a_tov; int /*<<< orphan*/  rtv_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_EXPL_INSUF_RES ; 
 int /*<<< orphan*/  ELS_LS_ACC ; 
 int /*<<< orphan*/  ELS_LS_RJT ; 
 int /*<<< orphan*/  ELS_RJT_UNAB ; 
 int /*<<< orphan*/  FC_RCTL_ELS_REP ; 
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fc_frame* FUNC2 (struct fc_lport*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*) ; 
 struct fc_els_rtv_acc* FUNC4 (struct fc_frame*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_frame*,int /*<<< orphan*/ ,struct fc_seq_els_data*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_lport*,struct fc_frame*) ; 

__attribute__((used)) static void FUNC9(struct fc_rport_priv *rdata,
				  struct fc_frame *in_fp)
{
	struct fc_lport *lport = rdata->local_port;
	struct fc_frame *fp;
	struct fc_els_rtv_acc *rtv;
	struct fc_seq_els_data rjt_data;

	FUNC7(&rdata->rp_mutex);
	FUNC7(&lport->lp_mutex);

	FUNC0(rdata, "Received RTV request\n");

	fp = FUNC2(lport, sizeof(*rtv));
	if (!fp) {
		rjt_data.reason = ELS_RJT_UNAB;
		rjt_data.explan = ELS_EXPL_INSUF_RES;
		FUNC5(in_fp, ELS_LS_RJT, &rjt_data);
		goto drop;
	}
	rtv = FUNC4(fp, sizeof(*rtv));
	rtv->rtv_cmd = ELS_LS_ACC;
	rtv->rtv_r_a_tov = FUNC6(lport->r_a_tov);
	rtv->rtv_e_d_tov = FUNC6(lport->e_d_tov);
	rtv->rtv_toq = 0;
	FUNC1(fp, in_fp, FC_RCTL_ELS_REP, 0);
	lport->tt.frame_send(lport, fp);
drop:
	FUNC3(in_fp);
}