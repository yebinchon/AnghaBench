
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fc_rport_priv {int kref; int rp_mutex; } ;
struct fc_lport {int lp_mutex; } ;
struct fc_frame {int dummy; } ;


 int ELS_LS_ACC ;
 int FC_RPORT_DBG (struct fc_rport_priv*,char*,int ) ;
 int FC_RPORT_ID_DBG (struct fc_lport*,int ,char*) ;
 int RPORT_EV_STOP ;
 int fc_frame_free (struct fc_frame*) ;
 int fc_frame_sid (struct fc_frame*) ;
 int fc_rport_destroy ;
 int fc_rport_enter_delete (struct fc_rport_priv*,int ) ;
 struct fc_rport_priv* fc_rport_lookup (struct fc_lport*,int ) ;
 int fc_rport_state (struct fc_rport_priv*) ;
 int fc_seq_els_rsp_send (struct fc_frame*,int ,int *) ;
 int kref_put (int *,int ) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fc_rport_recv_logo_req(struct fc_lport *lport, struct fc_frame *fp)
{
 struct fc_rport_priv *rdata;
 u32 sid;

 lockdep_assert_held(&lport->lp_mutex);

 fc_seq_els_rsp_send(fp, ELS_LS_ACC, ((void*)0));

 sid = fc_frame_sid(fp);

 rdata = fc_rport_lookup(lport, sid);
 if (rdata) {
  mutex_lock(&rdata->rp_mutex);
  FC_RPORT_DBG(rdata, "Received LOGO request while in state %s\n",
        fc_rport_state(rdata));

  fc_rport_enter_delete(rdata, RPORT_EV_STOP);
  mutex_unlock(&rdata->rp_mutex);
  kref_put(&rdata->kref, fc_rport_destroy);
 } else
  FC_RPORT_ID_DBG(lport, sid,
    "Received LOGO from non-logged-in port\n");
 fc_frame_free(fp);
}
