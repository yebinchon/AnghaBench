
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fc_seq_els_data {void* explan; void* reason; } ;
struct TYPE_4__ {scalar_t__ port_name; } ;
struct fc_rport_priv {int rp_state; int kref; int rp_mutex; TYPE_2__ ids; } ;
struct TYPE_3__ {int (* frame_send ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {scalar_t__ wwpn; TYPE_1__ tt; int point_to_multipoint; } ;
struct fc_frame {int dummy; } ;
struct fc_els_flogi {int fl_cmd; } ;


 void* ELS_EXPL_INV_LEN ;
 void* ELS_EXPL_NONE ;
 void* ELS_EXPL_NOT_NEIGHBOR ;
 int ELS_LS_ACC ;
 int ELS_LS_RJT ;
 void* ELS_RJT_BUSY ;
 void* ELS_RJT_FIP ;
 void* ELS_RJT_LOGIC ;
 void* ELS_RJT_UNSUP ;
 int FC_RCTL_ELS_REP ;
 int FC_RPORT_DBG (struct fc_rport_priv*,char*,int ) ;
 int FC_RPORT_ID_DBG (struct fc_lport*,int ,char*) ;
 int RPORT_EV_LOGO ;
 int fc_fill_reply_hdr (struct fc_frame*,struct fc_frame*,int ,int ) ;
 int fc_flogi_fill (struct fc_lport*,struct fc_frame*) ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 int fc_frame_free (struct fc_frame*) ;
 struct fc_els_flogi* fc_frame_payload_get (struct fc_frame*,int) ;
 int fc_frame_sid (struct fc_frame*) ;
 int fc_rport_destroy ;
 int fc_rport_enter_delete (struct fc_rport_priv*,int ) ;
 int fc_rport_enter_plogi (struct fc_rport_priv*) ;
 scalar_t__ fc_rport_login_complete (struct fc_rport_priv*,struct fc_frame*) ;
 struct fc_rport_priv* fc_rport_lookup (struct fc_lport*,int ) ;
 int fc_rport_state (struct fc_rport_priv*) ;
 int fc_rport_state_enter (struct fc_rport_priv*,int const) ;
 int fc_seq_els_rsp_send (struct fc_frame*,int ,struct fc_seq_els_data*) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct fc_lport*,struct fc_frame*) ;

__attribute__((used)) static void fc_rport_recv_flogi_req(struct fc_lport *lport,
        struct fc_frame *rx_fp)
{
 struct fc_els_flogi *flp;
 struct fc_rport_priv *rdata;
 struct fc_frame *fp = rx_fp;
 struct fc_seq_els_data rjt_data;
 u32 sid;

 sid = fc_frame_sid(fp);

 FC_RPORT_ID_DBG(lport, sid, "Received FLOGI request\n");

 if (!lport->point_to_multipoint) {
  rjt_data.reason = ELS_RJT_UNSUP;
  rjt_data.explan = ELS_EXPL_NONE;
  goto reject;
 }

 flp = fc_frame_payload_get(fp, sizeof(*flp));
 if (!flp) {
  rjt_data.reason = ELS_RJT_LOGIC;
  rjt_data.explan = ELS_EXPL_INV_LEN;
  goto reject;
 }

 rdata = fc_rport_lookup(lport, sid);
 if (!rdata) {
  rjt_data.reason = ELS_RJT_FIP;
  rjt_data.explan = ELS_EXPL_NOT_NEIGHBOR;
  goto reject;
 }
 mutex_lock(&rdata->rp_mutex);

 FC_RPORT_DBG(rdata, "Received FLOGI in %s state\n",
       fc_rport_state(rdata));

 switch (rdata->rp_state) {
 case 133:
  break;
 case 135:
  mutex_unlock(&rdata->rp_mutex);
  rjt_data.reason = ELS_RJT_FIP;
  rjt_data.explan = ELS_EXPL_NOT_NEIGHBOR;
  goto reject_put;
 case 134:
 case 131:
 case 132:
  break;
 case 130:
 case 128:
 case 129:
 case 136:




  fc_rport_enter_delete(rdata, RPORT_EV_LOGO);
  mutex_unlock(&rdata->rp_mutex);
  rjt_data.reason = ELS_RJT_BUSY;
  rjt_data.explan = ELS_EXPL_NONE;
  goto reject_put;
 }
 if (fc_rport_login_complete(rdata, fp)) {
  mutex_unlock(&rdata->rp_mutex);
  rjt_data.reason = ELS_RJT_LOGIC;
  rjt_data.explan = ELS_EXPL_NONE;
  goto reject_put;
 }

 fp = fc_frame_alloc(lport, sizeof(*flp));
 if (!fp)
  goto out;

 fc_flogi_fill(lport, fp);
 flp = fc_frame_payload_get(fp, sizeof(*flp));
 flp->fl_cmd = ELS_LS_ACC;

 fc_fill_reply_hdr(fp, rx_fp, FC_RCTL_ELS_REP, 0);
 lport->tt.frame_send(lport, fp);






 if (rdata->rp_state != 134) {
  if (rdata->ids.port_name < lport->wwpn)
   fc_rport_enter_plogi(rdata);
  else
   fc_rport_state_enter(rdata, 131);
 }
out:
 mutex_unlock(&rdata->rp_mutex);
 kref_put(&rdata->kref, fc_rport_destroy);
 fc_frame_free(rx_fp);
 return;

reject_put:
 kref_put(&rdata->kref, fc_rport_destroy);
reject:
 fc_seq_els_rsp_send(rx_fp, ELS_LS_RJT, &rjt_data);
 fc_frame_free(rx_fp);
}
