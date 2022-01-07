
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_rport_info_s {scalar_t__ max_frmsz; } ;
struct bfa_rport_s {struct bfa_rport_info_s rport_info; int rport_tag; int bfa; } ;


 int BFA_RPORT_SM_ONLINE ;
 scalar_t__ FC_MIN_PDUSZ ;
 int WARN_ON (int) ;
 int bfa_sm_send_event (struct bfa_rport_s*,int ) ;
 int bfa_trc (int ,int ) ;

void
bfa_rport_online(struct bfa_rport_s *rport, struct bfa_rport_info_s *rport_info)
{
 WARN_ON(rport_info->max_frmsz == 0);





 if (rport_info->max_frmsz == 0) {
  bfa_trc(rport->bfa, rport->rport_tag);
  rport_info->max_frmsz = FC_MIN_PDUSZ;
 }

 rport->rport_info = *rport_info;
 bfa_sm_send_event(rport, BFA_RPORT_SM_ONLINE);
}
