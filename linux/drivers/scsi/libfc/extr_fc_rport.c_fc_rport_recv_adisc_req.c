
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_seq_els_data {int explan; int reason; } ;
struct fc_rport_priv {int rp_mutex; struct fc_lport* local_port; } ;
struct TYPE_2__ {int (* frame_send ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {TYPE_1__ tt; int lp_mutex; } ;
struct fc_frame {int dummy; } ;
struct fc_els_adisc {int adisc_cmd; } ;


 int ELS_EXPL_INV_LEN ;
 int ELS_LS_ACC ;
 int ELS_LS_RJT ;
 int ELS_RJT_PROT ;
 int FC_RCTL_ELS_REP ;
 int FC_RPORT_DBG (struct fc_rport_priv*,char*) ;
 int fc_adisc_fill (struct fc_lport*,struct fc_frame*) ;
 int fc_fill_reply_hdr (struct fc_frame*,struct fc_frame*,int ,int ) ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 int fc_frame_free (struct fc_frame*) ;
 struct fc_els_adisc* fc_frame_payload_get (struct fc_frame*,int) ;
 int fc_seq_els_rsp_send (struct fc_frame*,int ,struct fc_seq_els_data*) ;
 int lockdep_assert_held (int *) ;
 int stub1 (struct fc_lport*,struct fc_frame*) ;

__attribute__((used)) static void fc_rport_recv_adisc_req(struct fc_rport_priv *rdata,
        struct fc_frame *in_fp)
{
 struct fc_lport *lport = rdata->local_port;
 struct fc_frame *fp;
 struct fc_els_adisc *adisc;
 struct fc_seq_els_data rjt_data;

 lockdep_assert_held(&rdata->rp_mutex);
 lockdep_assert_held(&lport->lp_mutex);

 FC_RPORT_DBG(rdata, "Received ADISC request\n");

 adisc = fc_frame_payload_get(in_fp, sizeof(*adisc));
 if (!adisc) {
  rjt_data.reason = ELS_RJT_PROT;
  rjt_data.explan = ELS_EXPL_INV_LEN;
  fc_seq_els_rsp_send(in_fp, ELS_LS_RJT, &rjt_data);
  goto drop;
 }

 fp = fc_frame_alloc(lport, sizeof(*adisc));
 if (!fp)
  goto drop;
 fc_adisc_fill(lport, fp);
 adisc = fc_frame_payload_get(fp, sizeof(*adisc));
 adisc->adisc_cmd = ELS_LS_ACC;
 fc_fill_reply_hdr(fp, in_fp, FC_RCTL_ELS_REP, 0);
 lport->tt.frame_send(lport, fp);
drop:
 fc_frame_free(in_fp);
}
