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
typedef  void* u32 ;
struct fcp_srr {int srr_r_ctl; int /*<<< orphan*/  srr_rel_off; void* srr_rx_id; void* srr_ox_id; int /*<<< orphan*/  srr_op; } ;
struct fc_seq {int dummy; } ;
struct fc_rport_libfc_priv {int flags; scalar_t__ rp_state; TYPE_1__* local_port; } ;
struct fc_rport {int /*<<< orphan*/  port_id; struct fc_rport_libfc_priv* dd_data; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {int /*<<< orphan*/  state; void* xfer_contig_end; void* xfer_len; struct fc_seq* recov_seq; struct fc_rport* rport; int /*<<< orphan*/  seq_ptr; struct fc_lport* lp; } ;
struct fc_exch {int /*<<< orphan*/  rxid; int /*<<< orphan*/  oxid; } ;
typedef  enum fc_rctl { ____Placeholder_fc_rctl } fc_rctl ;
struct TYPE_2__ {int /*<<< orphan*/  port_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_SRR ; 
 int /*<<< orphan*/  FC_FCTL_REQ ; 
 int /*<<< orphan*/  FC_RCTL_ELS4_REQ ; 
 int FC_RP_FLAGS_RETRY ; 
 int /*<<< orphan*/  FC_SRB_RCV_STATUS ; 
 int /*<<< orphan*/  FC_TRANS_RESET ; 
 int /*<<< orphan*/  FC_TYPE_FCP ; 
 scalar_t__ RPORT_ST_READY ; 
 struct fc_seq* FUNC0 (struct fc_lport*,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_fcp_pkt*,int /*<<< orphan*/ ) ; 
 struct fc_frame* FUNC1 (struct fc_lport*,int) ; 
 int /*<<< orphan*/  fc_fcp_pkt_destroy ; 
 int /*<<< orphan*/  FUNC2 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_fcp_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fc_fcp_srr_resp ; 
 int /*<<< orphan*/  FUNC4 (struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fcp_srr* FUNC5 (struct fc_frame*,int) ; 
 struct fc_exch* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fcp_srr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(struct fc_fcp_pkt *fsp, enum fc_rctl r_ctl, u32 offset)
{
	struct fc_lport *lport = fsp->lp;
	struct fc_rport *rport;
	struct fc_rport_libfc_priv *rpriv;
	struct fc_exch *ep = FUNC6(fsp->seq_ptr);
	struct fc_seq *seq;
	struct fcp_srr *srr;
	struct fc_frame *fp;

	rport = fsp->rport;
	rpriv = rport->dd_data;

	if (!(rpriv->flags & FC_RP_FLAGS_RETRY) ||
	    rpriv->rp_state != RPORT_ST_READY)
		goto retry;			/* shouldn't happen */
	fp = FUNC1(lport, sizeof(*srr));
	if (!fp)
		goto retry;

	srr = FUNC5(fp, sizeof(*srr));
	FUNC10(srr, 0, sizeof(*srr));
	srr->srr_op = ELS_SRR;
	srr->srr_ox_id = FUNC9(ep->oxid);
	srr->srr_rx_id = FUNC9(ep->rxid);
	srr->srr_r_ctl = r_ctl;
	srr->srr_rel_off = FUNC8(offset);

	FUNC4(fp, FC_RCTL_ELS4_REQ, rport->port_id,
		       rpriv->local_port->port_id, FC_TYPE_FCP,
		       FC_FCTL_REQ, 0);

	seq = FUNC0(lport, fp, fc_fcp_srr_resp,
			       fc_fcp_pkt_destroy,
			       fsp, FUNC7(fsp));
	if (!seq)
		goto retry;

	fsp->recov_seq = seq;
	fsp->xfer_len = offset;
	fsp->xfer_contig_end = offset;
	fsp->state &= ~FC_SRB_RCV_STATUS;
	FUNC2(fsp);		/* hold for outstanding SRR */
	return;
retry:
	FUNC3(fsp, FC_TRANS_RESET);
}