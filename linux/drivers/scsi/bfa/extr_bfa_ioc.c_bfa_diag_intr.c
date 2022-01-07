
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msg_id; } ;
struct bfi_mbmsg_s {TYPE_1__ mh; } ;
struct bfi_diag_ledtest_rsp_s {int dummy; } ;
struct bfi_diag_fwping_rsp_s {int dummy; } ;
struct bfa_diag_s {int dummy; } ;
typedef int bfi_diag_ts_rsp_t ;






 int WARN_ON (int) ;
 int bfa_trc (struct bfa_diag_s*,int) ;
 int diag_fwping_comp (struct bfa_diag_s*,struct bfi_diag_fwping_rsp_s*) ;
 int diag_ledtest_comp (struct bfa_diag_s*,struct bfi_diag_ledtest_rsp_s*) ;
 int diag_portbeacon_comp (struct bfa_diag_s*) ;
 int diag_tempsensor_comp (struct bfa_diag_s*,int *) ;

void
bfa_diag_intr(void *diagarg, struct bfi_mbmsg_s *msg)
{
 struct bfa_diag_s *diag = diagarg;

 switch (msg->mh.msg_id) {
 case 129:
  diag_portbeacon_comp(diag);
  break;
 case 131:
  diag_fwping_comp(diag, (struct bfi_diag_fwping_rsp_s *) msg);
  break;
 case 128:
  diag_tempsensor_comp(diag, (bfi_diag_ts_rsp_t *) msg);
  break;
 case 130:
  diag_ledtest_comp(diag, (struct bfi_diag_ledtest_rsp_s *) msg);
  break;
 default:
  bfa_trc(diag, msg->mh.msg_id);
  WARN_ON(1);
 }
}
