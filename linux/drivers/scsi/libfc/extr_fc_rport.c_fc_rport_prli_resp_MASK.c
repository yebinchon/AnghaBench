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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  temp_spp ;
struct fc_seq {int dummy; } ;
struct TYPE_2__ {int roles; } ;
struct fc_rport_priv {scalar_t__ rp_state; size_t spp_type; int /*<<< orphan*/  kref; int /*<<< orphan*/  rp_mutex; TYPE_1__ ids; int /*<<< orphan*/  supported_classes; int /*<<< orphan*/  flags; } ;
struct fc_frame {int dummy; } ;
struct fc_els_spp {int spp_flags; size_t spp_type; int /*<<< orphan*/  spp_params; } ;
struct fc_els_prli {int prli_spp_len; } ;
struct fc_els_ls_rjt {int er_reason; size_t er_explan; } ;
struct fc4_prov {int /*<<< orphan*/  (* prli ) (struct fc_rport_priv*,int,struct fc_els_spp*,struct fc_els_spp*) ;} ;
typedef  enum fc_els_spp_resp { ____Placeholder_fc_els_spp_resp } fc_els_spp_resp ;

/* Variables and functions */
 scalar_t__ ELS_LS_ACC ; 
 struct fc_frame* FUNC0 (int /*<<< orphan*/ ) ; 
 int FCP_SPPF_CONF_COMPL ; 
 int FCP_SPPF_INIT_FCN ; 
 int FCP_SPPF_RETRY ; 
 int FCP_SPPF_TARG_FCN ; 
 int /*<<< orphan*/  FC_COS_CLASS3 ; 
 int /*<<< orphan*/  FC_EX_CLOSED ; 
 int /*<<< orphan*/  FC_EX_ELS_RJT ; 
 int /*<<< orphan*/  FC_EX_SEQ_ERR ; 
 int /*<<< orphan*/  FUNC1 (struct fc_rport_priv*,char*,...) ; 
 int FC_RPORT_ROLE_FCP_INITIATOR ; 
 int FC_RPORT_ROLE_FCP_TARGET ; 
 void* FC_RPORT_ROLE_UNKNOWN ; 
 int /*<<< orphan*/  FC_RP_FLAGS_CONF_REQ ; 
 int /*<<< orphan*/  FC_RP_FLAGS_RETRY ; 
 int FC_SPP_EST_IMG_PAIR ; 
 int FC_SPP_RESP_ACK ; 
 int FC_SPP_RESP_CONF ; 
 int FC_SPP_RESP_MASK ; 
 size_t FC_TYPE_FCP ; 
 scalar_t__ FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*) ; 
 scalar_t__ RPORT_ST_PRLI ; 
 int /*<<< orphan*/  FUNC4 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_frame*) ; 
 void* FUNC6 (struct fc_frame*,int) ; 
 scalar_t__ FUNC7 (struct fc_frame*) ; 
 struct fc4_prov** fc_passive_prov ; 
 int /*<<< orphan*/  fc_rport_destroy ; 
 int /*<<< orphan*/  FUNC8 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_rport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_rport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct fc_els_spp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct fc_rport_priv*,int,struct fc_els_spp*,struct fc_els_spp*) ; 

__attribute__((used)) static void FUNC18(struct fc_seq *sp, struct fc_frame *fp,
			       void *rdata_arg)
{
	struct fc_rport_priv *rdata = rdata_arg;
	struct {
		struct fc_els_prli prli;
		struct fc_els_spp spp;
	} *pp;
	struct fc_els_spp temp_spp;
	struct fc_els_ls_rjt *rjt;
	struct fc4_prov *prov;
	u32 roles = FC_RPORT_ROLE_UNKNOWN;
	u32 fcp_parm = 0;
	u8 op;
	enum fc_els_spp_resp resp_code;

	FUNC1(rdata, "Received a PRLI %s\n", FUNC4(fp));

	if (fp == FUNC0(-FC_EX_CLOSED))
		goto put;

	FUNC14(&rdata->rp_mutex);

	if (rdata->rp_state != RPORT_ST_PRLI) {
		FUNC1(rdata, "Received a PRLI response, but in state "
			     "%s\n", FUNC11(rdata));
		if (FUNC2(fp))
			goto err;
		goto out;
	}

	if (FUNC2(fp)) {
		FUNC10(rdata, FUNC3(fp));
		goto err;
	}

	/* reinitialize remote port roles */
	rdata->ids.roles = FC_RPORT_ROLE_UNKNOWN;

	op = FUNC7(fp);
	if (op == ELS_LS_ACC) {
		pp = FUNC6(fp, sizeof(*pp));
		if (!pp) {
			FUNC10(rdata, -FC_EX_SEQ_ERR);
			goto out;
		}

		resp_code = (pp->spp.spp_flags & FC_SPP_RESP_MASK);
		FUNC1(rdata, "PRLI spp_flags = 0x%x spp_type 0x%x\n",
			     pp->spp.spp_flags, pp->spp.spp_type);
		rdata->spp_type = pp->spp.spp_type;
		if (resp_code != FC_SPP_RESP_ACK) {
			if (resp_code == FC_SPP_RESP_CONF)
				FUNC9(rdata, -FC_EX_SEQ_ERR);
			else
				FUNC10(rdata, -FC_EX_SEQ_ERR);
			goto out;
		}
		if (pp->prli.prli_spp_len < sizeof(pp->spp)) {
			FUNC10(rdata, -FC_EX_SEQ_ERR);
			goto out;
		}

		fcp_parm = FUNC16(pp->spp.spp_params);
		if (fcp_parm & FCP_SPPF_RETRY)
			rdata->flags |= FC_RP_FLAGS_RETRY;
		if (fcp_parm & FCP_SPPF_CONF_COMPL)
			rdata->flags |= FC_RP_FLAGS_CONF_REQ;

		/*
		 * Call prli provider if we should act as a target
		 */
		prov = fc_passive_prov[rdata->spp_type];
		if (prov) {
			FUNC13(&temp_spp, 0, sizeof(temp_spp));
			prov->prli(rdata, pp->prli.prli_spp_len,
				   &pp->spp, &temp_spp);
		}
		/*
		 * Check if the image pair could be established
		 */
		if (rdata->spp_type != FC_TYPE_FCP ||
		    !(pp->spp.spp_flags & FC_SPP_EST_IMG_PAIR)) {
			/*
			 * Nope; we can't use this port as a target.
			 */
			fcp_parm &= ~FCP_SPPF_TARG_FCN;
		}
		rdata->supported_classes = FC_COS_CLASS3;
		if (fcp_parm & FCP_SPPF_INIT_FCN)
			roles |= FC_RPORT_ROLE_FCP_INITIATOR;
		if (fcp_parm & FCP_SPPF_TARG_FCN)
			roles |= FC_RPORT_ROLE_FCP_TARGET;

		rdata->ids.roles = roles;
		FUNC8(rdata);

	} else {
		rjt = FUNC6(fp, sizeof(*rjt));
		if (!rjt)
			FUNC1(rdata, "PRLI bad response\n");
		else
			FUNC1(rdata, "PRLI ELS rejected, reason %x expl %x\n",
				     rjt->er_reason, rjt->er_explan);
		FUNC10(rdata, FC_EX_ELS_RJT);
	}

out:
	FUNC5(fp);
err:
	FUNC15(&rdata->rp_mutex);
put:
	FUNC12(&rdata->kref, fc_rport_destroy);
}