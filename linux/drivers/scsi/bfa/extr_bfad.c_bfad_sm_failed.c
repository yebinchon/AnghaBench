
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int hal_tmo; } ;
typedef enum bfad_sm_event { ____Placeholder_bfad_sm_event } bfad_sm_event ;



 int BFAD_E_FCS_EXIT_COMP ;


 int BFA_STATUS_OK ;
 int bfa_sm_fault (struct bfad_s*,int) ;
 int bfa_sm_send_event (struct bfad_s*,int ) ;
 int bfa_sm_set_state (struct bfad_s*,int ) ;
 int bfa_trc (struct bfad_s*,int) ;
 int bfad_remove_intr (struct bfad_s*) ;
 int bfad_sm_fcs_exit ;
 int bfad_sm_operational ;
 int bfad_sm_uninit ;
 int bfad_start_ops (struct bfad_s*) ;
 int del_timer_sync (int *) ;

__attribute__((used)) static void
bfad_sm_failed(struct bfad_s *bfad, enum bfad_sm_event event)
{
 int retval;

 bfa_trc(bfad, event);

 switch (event) {
 case 129:
  retval = bfad_start_ops(bfad);
  if (retval != BFA_STATUS_OK)
   break;
  bfa_sm_set_state(bfad, bfad_sm_operational);
  break;

 case 128:
  bfa_sm_set_state(bfad, bfad_sm_fcs_exit);
  bfa_sm_send_event(bfad, BFAD_E_FCS_EXIT_COMP);
  break;

 case 130:
  bfa_sm_set_state(bfad, bfad_sm_uninit);
  bfad_remove_intr(bfad);
  del_timer_sync(&bfad->hal_tmo);
  break;

 default:
  bfa_sm_fault(bfad, event);
 }
}
