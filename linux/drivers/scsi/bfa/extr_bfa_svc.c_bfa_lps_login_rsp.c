
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_lps_login_rsp_s {scalar_t__ bfa_tag; int status; int ext_status; int lsrjt_expl; int lsrjt_rsn; int fcf_mac; int brcd_switch; int lp_mac; int auth_req; int node_name; int port_name; int bb_credit; int npiv_en; int lp_pid; int f_port; int fw_tag; } ;
struct bfa_s {int dummy; } ;
struct bfa_lps_s {int status; int qe; int ext_status; int lsrjt_expl; int lsrjt_rsn; int fcf_mac; int brcd_switch; int lp_mac; int auth_req; int pr_nwwn; int pr_pwwn; int pr_bbcred; int npiv_en; int lp_pid; int fport; int fw_tag; } ;
struct bfa_lps_mod_s {scalar_t__ num_lps; int lps_active_q; } ;


 struct bfa_lps_s* BFA_LPS_FROM_TAG (struct bfa_lps_mod_s*,scalar_t__) ;
 struct bfa_lps_mod_s* BFA_LPS_MOD (struct bfa_s*) ;
 int BFA_LPS_SM_FWRSP ;




 int WARN_ON (int) ;
 int be16_to_cpu (int ) ;
 int bfa_lps_no_res (struct bfa_lps_s*,int ) ;
 int bfa_sm_send_event (struct bfa_lps_s*,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

__attribute__((used)) static void
bfa_lps_login_rsp(struct bfa_s *bfa, struct bfi_lps_login_rsp_s *rsp)
{
 struct bfa_lps_mod_s *mod = BFA_LPS_MOD(bfa);
 struct bfa_lps_s *lps;

 WARN_ON(rsp->bfa_tag >= mod->num_lps);
 lps = BFA_LPS_FROM_TAG(mod, rsp->bfa_tag);

 lps->status = rsp->status;
 switch (rsp->status) {
 case 129:
  lps->fw_tag = rsp->fw_tag;
  lps->fport = rsp->f_port;
  if (lps->fport)
   lps->lp_pid = rsp->lp_pid;
  lps->npiv_en = rsp->npiv_en;
  lps->pr_bbcred = be16_to_cpu(rsp->bb_credit);
  lps->pr_pwwn = rsp->port_name;
  lps->pr_nwwn = rsp->node_name;
  lps->auth_req = rsp->auth_req;
  lps->lp_mac = rsp->lp_mac;
  lps->brcd_switch = rsp->brcd_switch;
  lps->fcf_mac = rsp->fcf_mac;

  break;

 case 130:
  lps->lsrjt_rsn = rsp->lsrjt_rsn;
  lps->lsrjt_expl = rsp->lsrjt_expl;

  break;

 case 131:
  lps->ext_status = rsp->ext_status;

  break;

 case 128:
  if (rsp->ext_status)
   bfa_lps_no_res(lps, rsp->ext_status);
  break;

 default:

  break;
 }

 list_del(&lps->qe);
 list_add_tail(&lps->qe, &mod->lps_active_q);
 bfa_sm_send_event(lps, BFA_LPS_SM_FWRSP);
}
