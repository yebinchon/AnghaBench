
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fc_seq_els_data {void* explan; int reason; } ;
struct TYPE_3__ {void* port_name; void* node_name; } ;
struct fc_rport_priv {int rp_state; int rp_mutex; int maxframe_size; TYPE_1__ ids; } ;
struct TYPE_4__ {int (* frame_send ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_disc {int disc_mutex; } ;
struct fc_lport {TYPE_2__ tt; int mfs; void* wwpn; struct fc_disc disc; int lp_mutex; } ;
struct fc_frame {int dummy; } ;
struct fc_els_flogi {int fl_wwnn; int fl_wwpn; } ;


 void* ELS_EXPL_INSUF_RES ;
 void* ELS_EXPL_INV_LEN ;
 void* ELS_EXPL_NONE ;
 int ELS_LS_ACC ;
 int ELS_LS_RJT ;
 int ELS_RJT_BUSY ;
 int ELS_RJT_INPROG ;
 int ELS_RJT_LOGIC ;
 int ELS_RJT_PROT ;
 int ELS_RJT_UNAB ;
 int FC_RCTL_ELS_REP ;
 int FC_RPORT_DBG (struct fc_rport_priv*,char*,...) ;
 int FC_RPORT_ID_DBG (struct fc_lport*,int ,char*) ;
 int fc_fill_reply_hdr (struct fc_frame*,struct fc_frame*,int ,int ) ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 int fc_frame_free (struct fc_frame*) ;
 struct fc_els_flogi* fc_frame_payload_get (struct fc_frame*,int) ;
 int fc_frame_sid (struct fc_frame*) ;
 int fc_plogi_fill (struct fc_lport*,struct fc_frame*,int ) ;
 int fc_plogi_get_maxframe (struct fc_els_flogi*,int ) ;
 int fc_rport_compatible_roles (struct fc_lport*,struct fc_rport_priv*) ;
 struct fc_rport_priv* fc_rport_create (struct fc_lport*,int ) ;
 int fc_rport_enter_prli (struct fc_rport_priv*) ;
 int fc_rport_state (struct fc_rport_priv*) ;
 int fc_seq_els_rsp_send (struct fc_frame*,int ,struct fc_seq_els_data*) ;
 void* get_unaligned_be64 (int *) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct fc_lport*,struct fc_frame*) ;

__attribute__((used)) static void fc_rport_recv_plogi_req(struct fc_lport *lport,
        struct fc_frame *rx_fp)
{
 struct fc_disc *disc;
 struct fc_rport_priv *rdata;
 struct fc_frame *fp = rx_fp;
 struct fc_els_flogi *pl;
 struct fc_seq_els_data rjt_data;
 u32 sid;

 lockdep_assert_held(&lport->lp_mutex);

 sid = fc_frame_sid(fp);

 FC_RPORT_ID_DBG(lport, sid, "Received PLOGI request\n");

 pl = fc_frame_payload_get(fp, sizeof(*pl));
 if (!pl) {
  FC_RPORT_ID_DBG(lport, sid, "Received PLOGI too short\n");
  rjt_data.reason = ELS_RJT_PROT;
  rjt_data.explan = ELS_EXPL_INV_LEN;
  goto reject;
 }

 disc = &lport->disc;
 mutex_lock(&disc->disc_mutex);
 rdata = fc_rport_create(lport, sid);
 if (!rdata) {
  mutex_unlock(&disc->disc_mutex);
  rjt_data.reason = ELS_RJT_UNAB;
  rjt_data.explan = ELS_EXPL_INSUF_RES;
  goto reject;
 }

 mutex_lock(&rdata->rp_mutex);
 mutex_unlock(&disc->disc_mutex);

 rdata->ids.port_name = get_unaligned_be64(&pl->fl_wwpn);
 rdata->ids.node_name = get_unaligned_be64(&pl->fl_wwnn);
 switch (rdata->rp_state) {
 case 133:
  FC_RPORT_DBG(rdata, "Received PLOGI in INIT state\n");
  break;
 case 131:
  FC_RPORT_DBG(rdata, "Received PLOGI in PLOGI_WAIT state\n");
  break;
 case 132:
  FC_RPORT_DBG(rdata, "Received PLOGI in PLOGI state\n");
  if (rdata->ids.port_name < lport->wwpn) {
   mutex_unlock(&rdata->rp_mutex);
   rjt_data.reason = ELS_RJT_INPROG;
   rjt_data.explan = ELS_EXPL_NONE;
   goto reject;
  }
  break;
 case 130:
 case 128:
 case 129:
 case 136:
  FC_RPORT_DBG(rdata, "Received PLOGI in logged-in state %d "
        "- ignored for now\n", rdata->rp_state);

  break;
 case 134:
 case 135:
  FC_RPORT_DBG(rdata, "Received PLOGI in state %s - send busy\n",
        fc_rport_state(rdata));
  mutex_unlock(&rdata->rp_mutex);
  rjt_data.reason = ELS_RJT_BUSY;
  rjt_data.explan = ELS_EXPL_NONE;
  goto reject;
 }
 if (!fc_rport_compatible_roles(lport, rdata)) {
  FC_RPORT_DBG(rdata, "Received PLOGI for incompatible role\n");
  mutex_unlock(&rdata->rp_mutex);
  rjt_data.reason = ELS_RJT_LOGIC;
  rjt_data.explan = ELS_EXPL_NONE;
  goto reject;
 }




 rdata->maxframe_size = fc_plogi_get_maxframe(pl, lport->mfs);




 fp = fc_frame_alloc(lport, sizeof(*pl));
 if (!fp)
  goto out;

 fc_plogi_fill(lport, fp, ELS_LS_ACC);
 fc_fill_reply_hdr(fp, rx_fp, FC_RCTL_ELS_REP, 0);
 lport->tt.frame_send(lport, fp);
 fc_rport_enter_prli(rdata);
out:
 mutex_unlock(&rdata->rp_mutex);
 fc_frame_free(rx_fp);
 return;

reject:
 fc_seq_els_rsp_send(fp, ELS_LS_RJT, &rjt_data);
 fc_frame_free(fp);
}
