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
struct fc_seq_els_data {int /*<<< orphan*/  explan; int /*<<< orphan*/  reason; } ;
struct fc_rport_priv {int rp_state; int /*<<< orphan*/  kref; int /*<<< orphan*/  rp_mutex; } ;
struct fc_lport {int /*<<< orphan*/  lp_mutex; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
#define  ELS_ADISC 139 
 int /*<<< orphan*/  ELS_EXPL_NONE ; 
 int /*<<< orphan*/  ELS_EXPL_PLOGI_REQD ; 
 int const ELS_LS_RJT ; 
#define  ELS_PRLI 138 
#define  ELS_PRLO 137 
#define  ELS_REC 136 
 int /*<<< orphan*/  ELS_RJT_BUSY ; 
 int /*<<< orphan*/  ELS_RJT_UNAB ; 
#define  ELS_RLS 135 
#define  ELS_RRQ 134 
#define  ELS_RTV 133 
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*,int /*<<< orphan*/ ,char*,int) ; 
#define  RPORT_ST_ADISC 132 
#define  RPORT_ST_PLOGI 131 
#define  RPORT_ST_PRLI 130 
#define  RPORT_ST_READY 129 
#define  RPORT_ST_RTV 128 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 int FUNC3 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_frame*) ; 
 int /*<<< orphan*/  fc_rport_destroy ; 
 struct fc_rport_priv* FUNC5 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC11 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct fc_frame*,int const,struct fc_seq_els_data*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct fc_lport *lport, struct fc_frame *fp)
{
	struct fc_rport_priv *rdata;
	struct fc_seq_els_data els_data;

	FUNC14(&lport->lp_mutex);

	rdata = FUNC5(lport, FUNC4(fp));
	if (!rdata) {
		FUNC1(lport, FUNC4(fp),
				"Received ELS 0x%02x from non-logged-in port\n",
				FUNC3(fp));
		goto reject;
	}

	FUNC15(&rdata->rp_mutex);

	switch (rdata->rp_state) {
	case RPORT_ST_PRLI:
	case RPORT_ST_RTV:
	case RPORT_ST_READY:
	case RPORT_ST_ADISC:
		break;
	case RPORT_ST_PLOGI:
		if (FUNC3(fp) == ELS_PRLI) {
			FUNC0(rdata, "Reject ELS PRLI "
				     "while in state %s\n",
				     FUNC11(rdata));
			FUNC16(&rdata->rp_mutex);
			FUNC13(&rdata->kref, fc_rport_destroy);
			goto busy;
		}
		/* fall through */
	default:
		FUNC0(rdata,
			     "Reject ELS 0x%02x while in state %s\n",
			     FUNC3(fp), FUNC11(rdata));
		FUNC16(&rdata->rp_mutex);
		FUNC13(&rdata->kref, fc_rport_destroy);
		goto reject;
	}

	switch (FUNC3(fp)) {
	case ELS_PRLI:
		FUNC7(rdata, fp);
		break;
	case ELS_PRLO:
		FUNC8(rdata, fp);
		break;
	case ELS_ADISC:
		FUNC6(rdata, fp);
		break;
	case ELS_RRQ:
		FUNC12(fp, ELS_RRQ, NULL);
		FUNC2(fp);
		break;
	case ELS_REC:
		FUNC12(fp, ELS_REC, NULL);
		FUNC2(fp);
		break;
	case ELS_RLS:
		FUNC9(rdata, fp);
		break;
	case ELS_RTV:
		FUNC10(rdata, fp);
		break;
	default:
		FUNC2(fp);	/* can't happen */
		break;
	}

	FUNC16(&rdata->rp_mutex);
	FUNC13(&rdata->kref, fc_rport_destroy);
	return;

reject:
	els_data.reason = ELS_RJT_UNAB;
	els_data.explan = ELS_EXPL_PLOGI_REQD;
	FUNC12(fp, ELS_LS_RJT, &els_data);
	FUNC2(fp);
	return;

busy:
	els_data.reason = ELS_RJT_BUSY;
	els_data.explan = ELS_EXPL_NONE;
	FUNC12(fp, ELS_LS_RJT, &els_data);
	FUNC2(fp);
	return;
}