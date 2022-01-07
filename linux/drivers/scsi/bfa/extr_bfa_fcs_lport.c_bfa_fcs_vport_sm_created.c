
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fab_no_npiv; } ;
struct bfa_fcs_vport_s {int lport; TYPE_1__ vport_stats; } ;
typedef enum bfa_fcs_vport_event { ____Placeholder_bfa_fcs_vport_event } bfa_fcs_vport_event ;






 int __vport_fabric (struct bfa_fcs_vport_s*) ;
 int __vport_fcs (struct bfa_fcs_vport_s*) ;
 int __vport_pwwn (struct bfa_fcs_vport_s*) ;
 int bfa_fcs_fabric_npiv_capable (int ) ;
 int bfa_fcs_fabric_sm_online ;
 int bfa_fcs_lport_delete (int *) ;
 int bfa_fcs_vport_do_fdisc (struct bfa_fcs_vport_s*) ;
 int bfa_fcs_vport_sm_cleanup ;
 int bfa_fcs_vport_sm_fdisc ;
 int bfa_fcs_vport_sm_offline ;
 int bfa_sm_cmp_state (int ,int ) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_vport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_vport_sm_created(struct bfa_fcs_vport_s *vport,
   enum bfa_fcs_vport_event event)
{
 bfa_trc(__vport_fcs(vport), __vport_pwwn(vport));
 bfa_trc(__vport_fcs(vport), event);

 switch (event) {
 case 128:
  if (bfa_sm_cmp_state(__vport_fabric(vport),
     bfa_fcs_fabric_sm_online)
      && bfa_fcs_fabric_npiv_capable(__vport_fabric(vport))) {
   bfa_sm_set_state(vport, bfa_fcs_vport_sm_fdisc);
   bfa_fcs_vport_do_fdisc(vport);
  } else {




   vport->vport_stats.fab_no_npiv++;
   bfa_sm_set_state(vport, bfa_fcs_vport_sm_offline);
  }
  break;

 case 131:
  bfa_sm_set_state(vport, bfa_fcs_vport_sm_cleanup);
  bfa_fcs_lport_delete(&vport->lport);
  break;

 case 129:
 case 130:




  break;

 default:
  bfa_sm_fault(__vport_fcs(vport), event);
 }
}
