
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct fcp_srr {int srr_r_ctl; int srr_rel_off; void* srr_rx_id; void* srr_ox_id; int srr_op; } ;
struct fc_seq {int dummy; } ;
struct fc_rport_libfc_priv {int flags; scalar_t__ rp_state; TYPE_1__* local_port; } ;
struct fc_rport {int port_id; struct fc_rport_libfc_priv* dd_data; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {int state; void* xfer_contig_end; void* xfer_len; struct fc_seq* recov_seq; struct fc_rport* rport; int seq_ptr; struct fc_lport* lp; } ;
struct fc_exch {int rxid; int oxid; } ;
typedef enum fc_rctl { ____Placeholder_fc_rctl } fc_rctl ;
struct TYPE_2__ {int port_id; } ;


 int ELS_SRR ;
 int FC_FCTL_REQ ;
 int FC_RCTL_ELS4_REQ ;
 int FC_RP_FLAGS_RETRY ;
 int FC_SRB_RCV_STATUS ;
 int FC_TRANS_RESET ;
 int FC_TYPE_FCP ;
 scalar_t__ RPORT_ST_READY ;
 struct fc_seq* fc_exch_seq_send (struct fc_lport*,struct fc_frame*,int ,int ,struct fc_fcp_pkt*,int ) ;
 struct fc_frame* fc_fcp_frame_alloc (struct fc_lport*,int) ;
 int fc_fcp_pkt_destroy ;
 int fc_fcp_pkt_hold (struct fc_fcp_pkt*) ;
 int fc_fcp_retry_cmd (struct fc_fcp_pkt*,int ) ;
 int fc_fcp_srr_resp ;
 int fc_fill_fc_hdr (struct fc_frame*,int ,int ,int ,int ,int ,int ) ;
 struct fcp_srr* fc_frame_payload_get (struct fc_frame*,int) ;
 struct fc_exch* fc_seq_exch (int ) ;
 int get_fsp_rec_tov (struct fc_fcp_pkt*) ;
 int htonl (void*) ;
 void* htons (int ) ;
 int memset (struct fcp_srr*,int ,int) ;

__attribute__((used)) static void fc_fcp_srr(struct fc_fcp_pkt *fsp, enum fc_rctl r_ctl, u32 offset)
{
 struct fc_lport *lport = fsp->lp;
 struct fc_rport *rport;
 struct fc_rport_libfc_priv *rpriv;
 struct fc_exch *ep = fc_seq_exch(fsp->seq_ptr);
 struct fc_seq *seq;
 struct fcp_srr *srr;
 struct fc_frame *fp;

 rport = fsp->rport;
 rpriv = rport->dd_data;

 if (!(rpriv->flags & FC_RP_FLAGS_RETRY) ||
     rpriv->rp_state != RPORT_ST_READY)
  goto retry;
 fp = fc_fcp_frame_alloc(lport, sizeof(*srr));
 if (!fp)
  goto retry;

 srr = fc_frame_payload_get(fp, sizeof(*srr));
 memset(srr, 0, sizeof(*srr));
 srr->srr_op = ELS_SRR;
 srr->srr_ox_id = htons(ep->oxid);
 srr->srr_rx_id = htons(ep->rxid);
 srr->srr_r_ctl = r_ctl;
 srr->srr_rel_off = htonl(offset);

 fc_fill_fc_hdr(fp, FC_RCTL_ELS4_REQ, rport->port_id,
         rpriv->local_port->port_id, FC_TYPE_FCP,
         FC_FCTL_REQ, 0);

 seq = fc_exch_seq_send(lport, fp, fc_fcp_srr_resp,
          fc_fcp_pkt_destroy,
          fsp, get_fsp_rec_tov(fsp));
 if (!seq)
  goto retry;

 fsp->recov_seq = seq;
 fsp->xfer_len = offset;
 fsp->xfer_contig_end = offset;
 fsp->state &= ~FC_SRB_RCV_STATUS;
 fc_fcp_pkt_hold(fsp);
 return;
retry:
 fc_fcp_retry_cmd(fsp, FC_TRANS_RESET);
}
