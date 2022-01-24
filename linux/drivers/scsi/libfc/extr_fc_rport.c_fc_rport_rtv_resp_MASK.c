#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct fc_seq {int dummy; } ;
struct fc_rport_priv {scalar_t__ rp_state; int r_a_tov; int e_d_tov; int /*<<< orphan*/  kref; int /*<<< orphan*/  rp_mutex; } ;
struct fc_frame {int dummy; } ;
struct fc_els_rtv_acc {int /*<<< orphan*/  rtv_e_d_tov; int /*<<< orphan*/  rtv_r_a_tov; int /*<<< orphan*/  rtv_toq; } ;

/* Variables and functions */
 scalar_t__ ELS_LS_ACC ; 
 struct fc_frame* FUNC0 (int /*<<< orphan*/ ) ; 
 int FC_ELS_RTV_EDRES ; 
 int /*<<< orphan*/  FC_EX_CLOSED ; 
 int /*<<< orphan*/  FUNC1 (struct fc_rport_priv*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*) ; 
 scalar_t__ RPORT_ST_RTV ; 
 int /*<<< orphan*/  FUNC4 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_frame*) ; 
 struct fc_els_rtv_acc* FUNC6 (struct fc_frame*,int) ; 
 scalar_t__ FUNC7 (struct fc_frame*) ; 
 int /*<<< orphan*/  fc_rport_destroy ; 
 int /*<<< orphan*/  FUNC8 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_rport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct fc_seq *sp, struct fc_frame *fp,
			      void *rdata_arg)
{
	struct fc_rport_priv *rdata = rdata_arg;
	u8 op;

	FUNC1(rdata, "Received a RTV %s\n", FUNC4(fp));

	if (fp == FUNC0(-FC_EX_CLOSED))
		goto put;

	FUNC12(&rdata->rp_mutex);

	if (rdata->rp_state != RPORT_ST_RTV) {
		FUNC1(rdata, "Received a RTV response, but in state "
			     "%s\n", FUNC10(rdata));
		if (FUNC2(fp))
			goto err;
		goto out;
	}

	if (FUNC2(fp)) {
		FUNC9(rdata, FUNC3(fp));
		goto err;
	}

	op = FUNC7(fp);
	if (op == ELS_LS_ACC) {
		struct fc_els_rtv_acc *rtv;
		u32 toq;
		u32 tov;

		rtv = FUNC6(fp, sizeof(*rtv));
		if (rtv) {
			toq = FUNC14(rtv->rtv_toq);
			tov = FUNC14(rtv->rtv_r_a_tov);
			if (tov == 0)
				tov = 1;
			if (tov > rdata->r_a_tov)
				rdata->r_a_tov = tov;
			tov = FUNC14(rtv->rtv_e_d_tov);
			if (toq & FC_ELS_RTV_EDRES)
				tov /= 1000000;
			if (tov == 0)
				tov = 1;
			if (tov > rdata->e_d_tov)
				rdata->e_d_tov = tov;
		}
	}

	FUNC8(rdata);

out:
	FUNC5(fp);
err:
	FUNC13(&rdata->rp_mutex);
put:
	FUNC11(&rdata->kref, fc_rport_destroy);
}