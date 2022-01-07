
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_vport_s {int dummy; } ;
typedef enum bfa_fcs_vport_event { ____Placeholder_bfa_fcs_vport_event } bfa_fcs_vport_event ;




 int __vport_fcs (struct bfa_fcs_vport_s*) ;
 int __vport_pwwn (struct bfa_fcs_vport_s*) ;
 int bfa_fcs_vport_do_logo (struct bfa_fcs_vport_s*) ;
 int bfa_fcs_vport_sm_cleanup ;
 int bfa_fcs_vport_sm_logo_for_stop ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_vport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_vport_sm_stopping(struct bfa_fcs_vport_s *vport,
     enum bfa_fcs_vport_event event)
{
 bfa_trc(__vport_fcs(vport), __vport_pwwn(vport));
 bfa_trc(__vport_fcs(vport), event);

 switch (event) {
 case 128:
  bfa_sm_set_state(vport, bfa_fcs_vport_sm_logo_for_stop);
  bfa_fcs_vport_do_logo(vport);
  break;

 case 129:
  bfa_sm_set_state(vport, bfa_fcs_vport_sm_cleanup);
  break;

 default:
  bfa_sm_fault(__vport_fcs(vport), event);
 }
}
