
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int rem_port_wwn; } ;
struct TYPE_10__ {TYPE_3__ pn2n; } ;
struct TYPE_7__ {int pwwn; } ;
struct TYPE_12__ {int pid; TYPE_4__ port_topo; TYPE_1__ port_cfg; } ;
struct TYPE_8__ {int flogi_rsp_err; int flogi_rejects; int flogi_unknown_rsp; int flogi_acc_err; int flogi_accepts; } ;
struct bfa_fcs_fabric_s {int is_auth; int fcs; int is_npiv; TYPE_6__ bport; int fab_type; TYPE_5__* lps; int fabric_name; int bb_credit; TYPE_2__ stats; } ;
typedef int bfa_status_t ;
struct TYPE_11__ {int pr_pwwn; int auth_req; int npiv_en; int lp_pid; scalar_t__ fport; int pr_nwwn; int brcd_switch; int pr_bbcred; int ext_status; } ;




 int BFA_FCS_FABRIC_N2N ;
 int BFA_FCS_FABRIC_SM_CONT_OP ;
 int BFA_FCS_FABRIC_SM_NO_FABRIC ;
 int BFA_FCS_FABRIC_SM_RETRY_OP ;




 int bfa_sm_send_event (struct bfa_fcs_fabric_s*,int ) ;
 int bfa_trc (int ,int ) ;

void
bfa_cb_lps_flogi_comp(void *bfad, void *uarg, bfa_status_t status)
{
 struct bfa_fcs_fabric_s *fabric = uarg;

 bfa_trc(fabric->fcs, fabric->bport.port_cfg.pwwn);
 bfa_trc(fabric->fcs, status);

 switch (status) {
 case 128:
  fabric->stats.flogi_accepts++;
  break;

 case 129:

  fabric->stats.flogi_acc_err++;
  bfa_sm_send_event(fabric, BFA_FCS_FABRIC_SM_RETRY_OP);

  return;

 case 131:
  switch (fabric->lps->ext_status) {
  case 133:
   fabric->stats.flogi_acc_err++;
   break;

  case 132:
   fabric->stats.flogi_unknown_rsp++;
   break;

  default:
   break;
  }
  bfa_sm_send_event(fabric, BFA_FCS_FABRIC_SM_RETRY_OP);

  return;

 case 130:
  fabric->stats.flogi_rejects++;
  bfa_sm_send_event(fabric, BFA_FCS_FABRIC_SM_RETRY_OP);
  return;

 default:
  fabric->stats.flogi_rsp_err++;
  bfa_sm_send_event(fabric, BFA_FCS_FABRIC_SM_RETRY_OP);
  return;
 }

 fabric->bb_credit = fabric->lps->pr_bbcred;
 bfa_trc(fabric->fcs, fabric->bb_credit);

 if (!(fabric->lps->brcd_switch))
  fabric->fabric_name = fabric->lps->pr_nwwn;




 if (fabric->lps->fport) {
  fabric->bport.pid = fabric->lps->lp_pid;
  fabric->is_npiv = fabric->lps->npiv_en;
  fabric->is_auth = fabric->lps->auth_req;
  bfa_sm_send_event(fabric, BFA_FCS_FABRIC_SM_CONT_OP);
 } else {



  fabric->bport.port_topo.pn2n.rem_port_wwn =
   fabric->lps->pr_pwwn;
  fabric->fab_type = BFA_FCS_FABRIC_N2N;
  bfa_sm_send_event(fabric, BFA_FCS_FABRIC_SM_NO_FABRIC);
 }

 bfa_trc(fabric->fcs, fabric->bport.pid);
 bfa_trc(fabric->fcs, fabric->is_npiv);
 bfa_trc(fabric->fcs, fabric->is_auth);
}
