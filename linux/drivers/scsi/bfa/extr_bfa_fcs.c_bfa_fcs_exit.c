
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lps; } ;
struct bfa_fcs_s {int wc; TYPE_1__ fabric; } ;


 int BFA_FCS_FABRIC_SM_DELETE ;
 int bfa_fcs_exit_comp ;
 int bfa_lps_delete (int ) ;
 int bfa_sm_send_event (TYPE_1__*,int ) ;
 int bfa_trc (struct bfa_fcs_s*,int ) ;
 int bfa_wc_init (int *,int ,struct bfa_fcs_s*) ;
 int bfa_wc_up (int *) ;
 int bfa_wc_wait (int *) ;

void
bfa_fcs_exit(struct bfa_fcs_s *fcs)
{
 bfa_wc_init(&fcs->wc, bfa_fcs_exit_comp, fcs);
 bfa_wc_up(&fcs->wc);
 bfa_trc(fcs, 0);
 bfa_lps_delete(fcs->fabric.lps);
 bfa_sm_send_event(&fcs->fabric, BFA_FCS_FABRIC_SM_DELETE);
 bfa_wc_wait(&fcs->wc);
}
