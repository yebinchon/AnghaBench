
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg_id; } ;
struct bfi_msg_s {TYPE_1__ mhdr; } ;
struct bfi_diag_lb_rsp_s {int dummy; } ;
struct bfi_diag_dport_scn_s {int dummy; } ;
struct bfi_diag_dport_rsp_s {int dummy; } ;
struct bfa_s {int dummy; } ;
struct bfa_fcdiag_s {int dport; } ;
typedef int bfi_diag_qtest_rsp_t ;


 struct bfa_fcdiag_s* BFA_FCDIAG_MOD (struct bfa_s*) ;




 int WARN_ON (int) ;
 int bfa_dport_req_comp (int *,struct bfi_diag_dport_rsp_s*) ;
 int bfa_dport_scn (int *,struct bfi_diag_dport_scn_s*) ;
 int bfa_fcdiag_loopback_comp (struct bfa_fcdiag_s*,struct bfi_diag_lb_rsp_s*) ;
 int bfa_fcdiag_queuetest_comp (struct bfa_fcdiag_s*,int *) ;
 int bfa_trc (struct bfa_fcdiag_s*,int) ;

void
bfa_fcdiag_intr(struct bfa_s *bfa, struct bfi_msg_s *msg)
{
 struct bfa_fcdiag_s *fcdiag = BFA_FCDIAG_MOD(bfa);

 switch (msg->mhdr.msg_id) {
 case 129:
  bfa_fcdiag_loopback_comp(fcdiag,
    (struct bfi_diag_lb_rsp_s *) msg);
  break;
 case 128:
  bfa_fcdiag_queuetest_comp(fcdiag, (bfi_diag_qtest_rsp_t *)msg);
  break;
 case 131:
  bfa_dport_req_comp(&fcdiag->dport,
    (struct bfi_diag_dport_rsp_s *)msg);
  break;
 case 130:
  bfa_dport_scn(&fcdiag->dport,
    (struct bfi_diag_dport_scn_s *)msg);
  break;
 default:
  bfa_trc(fcdiag, msg->mhdr.msg_id);
  WARN_ON(1);
 }
}
