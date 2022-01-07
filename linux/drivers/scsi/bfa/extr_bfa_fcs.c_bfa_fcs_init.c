
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_s {int fabric; } ;


 int BFA_FCS_FABRIC_SM_CREATE ;
 int bfa_sm_send_event (int *,int ) ;
 int bfa_trc (struct bfa_fcs_s*,int ) ;

void
bfa_fcs_init(struct bfa_fcs_s *fcs)
{
 bfa_sm_send_event(&fcs->fabric, BFA_FCS_FABRIC_SM_CREATE);
 bfa_trc(fcs, 0);
}
