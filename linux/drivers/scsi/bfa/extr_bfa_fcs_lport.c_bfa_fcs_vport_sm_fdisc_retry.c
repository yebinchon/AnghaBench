
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fdisc_retries; } ;
struct bfa_fcs_vport_s {int fdisc_retries; TYPE_1__ vport_stats; int timer; int lport; } ;
typedef enum bfa_fcs_vport_event { ____Placeholder_bfa_fcs_vport_event } bfa_fcs_vport_event ;





 int __vport_fcs (struct bfa_fcs_vport_s*) ;
 int __vport_pwwn (struct bfa_fcs_vport_s*) ;
 int bfa_fcs_lport_delete (int *) ;
 int bfa_fcs_vport_do_fdisc (struct bfa_fcs_vport_s*) ;
 int bfa_fcs_vport_sm_cleanup ;
 int bfa_fcs_vport_sm_fdisc ;
 int bfa_fcs_vport_sm_offline ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_vport_s*,int ) ;
 int bfa_timer_stop (int *) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_vport_sm_fdisc_retry(struct bfa_fcs_vport_s *vport,
        enum bfa_fcs_vport_event event)
{
 bfa_trc(__vport_fcs(vport), __vport_pwwn(vport));
 bfa_trc(__vport_fcs(vport), event);

 switch (event) {
 case 130:
  bfa_sm_set_state(vport, bfa_fcs_vport_sm_cleanup);
  bfa_timer_stop(&vport->timer);
  bfa_fcs_lport_delete(&vport->lport);
  break;

 case 129:
  bfa_sm_set_state(vport, bfa_fcs_vport_sm_offline);
  bfa_timer_stop(&vport->timer);
  break;

 case 128:
  bfa_sm_set_state(vport, bfa_fcs_vport_sm_fdisc);
  vport->vport_stats.fdisc_retries++;
  vport->fdisc_retries++;
  bfa_fcs_vport_do_fdisc(vport);
  break;

 default:
  bfa_sm_fault(__vport_fcs(vport), event);
 }
}
