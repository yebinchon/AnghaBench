
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq_els_data {int explan; int reason; } ;
struct fc_rport_priv {int rp_state; int kref; int rp_mutex; } ;
struct fc_lport {int lp_mutex; } ;
struct fc_frame {int dummy; } ;



 int ELS_EXPL_NONE ;
 int ELS_EXPL_PLOGI_REQD ;
 int const ELS_LS_RJT ;



 int ELS_RJT_BUSY ;
 int ELS_RJT_UNAB ;



 int FC_RPORT_DBG (struct fc_rport_priv*,char*,int,...) ;
 int FC_RPORT_ID_DBG (struct fc_lport*,int ,char*,int) ;





 int fc_frame_free (struct fc_frame*) ;
 int fc_frame_payload_op (struct fc_frame*) ;
 int fc_frame_sid (struct fc_frame*) ;
 int fc_rport_destroy ;
 struct fc_rport_priv* fc_rport_lookup (struct fc_lport*,int ) ;
 int fc_rport_recv_adisc_req (struct fc_rport_priv*,struct fc_frame*) ;
 int fc_rport_recv_prli_req (struct fc_rport_priv*,struct fc_frame*) ;
 int fc_rport_recv_prlo_req (struct fc_rport_priv*,struct fc_frame*) ;
 int fc_rport_recv_rls_req (struct fc_rport_priv*,struct fc_frame*) ;
 int fc_rport_recv_rtv_req (struct fc_rport_priv*,struct fc_frame*) ;
 int fc_rport_state (struct fc_rport_priv*) ;
 int fc_seq_els_rsp_send (struct fc_frame*,int const,struct fc_seq_els_data*) ;
 int kref_put (int *,int ) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fc_rport_recv_els_req(struct fc_lport *lport, struct fc_frame *fp)
{
 struct fc_rport_priv *rdata;
 struct fc_seq_els_data els_data;

 lockdep_assert_held(&lport->lp_mutex);

 rdata = fc_rport_lookup(lport, fc_frame_sid(fp));
 if (!rdata) {
  FC_RPORT_ID_DBG(lport, fc_frame_sid(fp),
    "Received ELS 0x%02x from non-logged-in port\n",
    fc_frame_payload_op(fp));
  goto reject;
 }

 mutex_lock(&rdata->rp_mutex);

 switch (rdata->rp_state) {
 case 130:
 case 128:
 case 129:
 case 132:
  break;
 case 131:
  if (fc_frame_payload_op(fp) == 138) {
   FC_RPORT_DBG(rdata, "Reject ELS PRLI "
         "while in state %s\n",
         fc_rport_state(rdata));
   mutex_unlock(&rdata->rp_mutex);
   kref_put(&rdata->kref, fc_rport_destroy);
   goto busy;
  }

 default:
  FC_RPORT_DBG(rdata,
        "Reject ELS 0x%02x while in state %s\n",
        fc_frame_payload_op(fp), fc_rport_state(rdata));
  mutex_unlock(&rdata->rp_mutex);
  kref_put(&rdata->kref, fc_rport_destroy);
  goto reject;
 }

 switch (fc_frame_payload_op(fp)) {
 case 138:
  fc_rport_recv_prli_req(rdata, fp);
  break;
 case 137:
  fc_rport_recv_prlo_req(rdata, fp);
  break;
 case 139:
  fc_rport_recv_adisc_req(rdata, fp);
  break;
 case 134:
  fc_seq_els_rsp_send(fp, 134, ((void*)0));
  fc_frame_free(fp);
  break;
 case 136:
  fc_seq_els_rsp_send(fp, 136, ((void*)0));
  fc_frame_free(fp);
  break;
 case 135:
  fc_rport_recv_rls_req(rdata, fp);
  break;
 case 133:
  fc_rport_recv_rtv_req(rdata, fp);
  break;
 default:
  fc_frame_free(fp);
  break;
 }

 mutex_unlock(&rdata->rp_mutex);
 kref_put(&rdata->kref, fc_rport_destroy);
 return;

reject:
 els_data.reason = ELS_RJT_UNAB;
 els_data.explan = ELS_EXPL_PLOGI_REQD;
 fc_seq_els_rsp_send(fp, ELS_LS_RJT, &els_data);
 fc_frame_free(fp);
 return;

busy:
 els_data.reason = ELS_RJT_BUSY;
 els_data.explan = ELS_EXPL_NONE;
 fc_seq_els_rsp_send(fp, ELS_LS_RJT, &els_data);
 fc_frame_free(fp);
 return;
}
