
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_seq_els_data {int explan; int reason; } ;
struct fc_rport_priv {int rp_mutex; struct fc_lport* local_port; } ;
struct TYPE_2__ {int (* frame_send ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {TYPE_1__ tt; int e_d_tov; int r_a_tov; int lp_mutex; } ;
struct fc_frame {int dummy; } ;
struct fc_els_rtv_acc {scalar_t__ rtv_toq; void* rtv_e_d_tov; void* rtv_r_a_tov; int rtv_cmd; } ;


 int ELS_EXPL_INSUF_RES ;
 int ELS_LS_ACC ;
 int ELS_LS_RJT ;
 int ELS_RJT_UNAB ;
 int FC_RCTL_ELS_REP ;
 int FC_RPORT_DBG (struct fc_rport_priv*,char*) ;
 int fc_fill_reply_hdr (struct fc_frame*,struct fc_frame*,int ,int ) ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 int fc_frame_free (struct fc_frame*) ;
 struct fc_els_rtv_acc* fc_frame_payload_get (struct fc_frame*,int) ;
 int fc_seq_els_rsp_send (struct fc_frame*,int ,struct fc_seq_els_data*) ;
 void* htonl (int ) ;
 int lockdep_assert_held (int *) ;
 int stub1 (struct fc_lport*,struct fc_frame*) ;

__attribute__((used)) static void fc_rport_recv_rtv_req(struct fc_rport_priv *rdata,
      struct fc_frame *in_fp)
{
 struct fc_lport *lport = rdata->local_port;
 struct fc_frame *fp;
 struct fc_els_rtv_acc *rtv;
 struct fc_seq_els_data rjt_data;

 lockdep_assert_held(&rdata->rp_mutex);
 lockdep_assert_held(&lport->lp_mutex);

 FC_RPORT_DBG(rdata, "Received RTV request\n");

 fp = fc_frame_alloc(lport, sizeof(*rtv));
 if (!fp) {
  rjt_data.reason = ELS_RJT_UNAB;
  rjt_data.explan = ELS_EXPL_INSUF_RES;
  fc_seq_els_rsp_send(in_fp, ELS_LS_RJT, &rjt_data);
  goto drop;
 }
 rtv = fc_frame_payload_get(fp, sizeof(*rtv));
 rtv->rtv_cmd = ELS_LS_ACC;
 rtv->rtv_r_a_tov = htonl(lport->r_a_tov);
 rtv->rtv_e_d_tov = htonl(lport->e_d_tov);
 rtv->rtv_toq = 0;
 fc_fill_reply_hdr(fp, in_fp, FC_RCTL_ELS_REP, 0);
 lport->tt.frame_send(lport, fp);
drop:
 fc_frame_free(in_fp);
}
