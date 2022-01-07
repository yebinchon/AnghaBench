
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union bfi_lps_i2h_msg_u {int cvl_event; int logout_rsp; int login_rsp; struct bfi_msg_s* msg; } ;
struct TYPE_2__ {int msg_id; } ;
struct bfi_msg_s {TYPE_1__ mhdr; } ;
struct bfa_s {int dummy; } ;





 int WARN_ON (int) ;
 int bfa_lps_login_rsp (struct bfa_s*,int ) ;
 int bfa_lps_logout_rsp (struct bfa_s*,int ) ;
 int bfa_lps_rx_cvl_event (struct bfa_s*,int ) ;
 int bfa_trc (struct bfa_s*,int) ;

void
bfa_lps_isr(struct bfa_s *bfa, struct bfi_msg_s *m)
{
 union bfi_lps_i2h_msg_u msg;

 bfa_trc(bfa, m->mhdr.msg_id);
 msg.msg = m;

 switch (m->mhdr.msg_id) {
 case 129:
  bfa_lps_login_rsp(bfa, msg.login_rsp);
  break;

 case 128:
  bfa_lps_logout_rsp(bfa, msg.logout_rsp);
  break;

 case 130:
  bfa_lps_rx_cvl_event(bfa, msg.cvl_event);
  break;

 default:
  bfa_trc(bfa, m->mhdr.msg_id);
  WARN_ON(1);
 }
}
