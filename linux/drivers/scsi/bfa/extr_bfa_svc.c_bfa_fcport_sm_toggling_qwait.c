
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcport_s {int bfa; int reqq_wait; } ;
typedef enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;
 int bfa_fcport_send_disable (struct bfa_fcport_s*) ;
 int bfa_fcport_send_enable (struct bfa_fcport_s*) ;
 int bfa_fcport_sm_disabling ;
 int bfa_fcport_sm_disabling_qwait ;
 int bfa_fcport_sm_enabling ;
 int bfa_fcport_sm_enabling_qwait ;
 int bfa_fcport_sm_iocfail ;
 int bfa_fcport_sm_stopped ;
 int bfa_reqq_wcancel (int *) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcport_sm_toggling_qwait(struct bfa_fcport_s *fcport,
     enum bfa_fcport_sm_event event)
{
 bfa_trc(fcport->bfa, event);

 switch (event) {
 case 129:
  bfa_sm_set_state(fcport, bfa_fcport_sm_disabling);
  bfa_fcport_send_disable(fcport);
  if (bfa_fcport_send_enable(fcport))
   bfa_sm_set_state(fcport, bfa_fcport_sm_enabling);
  else
   bfa_sm_set_state(fcport,
      bfa_fcport_sm_enabling_qwait);
  break;

 case 128:
  bfa_sm_set_state(fcport, bfa_fcport_sm_stopped);
  bfa_reqq_wcancel(&fcport->reqq_wait);
  break;

 case 133:
  break;

 case 134:
  bfa_sm_set_state(fcport, bfa_fcport_sm_disabling_qwait);
  break;

 case 130:
 case 131:




  break;

 case 132:
  bfa_sm_set_state(fcport, bfa_fcport_sm_iocfail);
  bfa_reqq_wcancel(&fcport->reqq_wait);
  break;

 default:
  bfa_sm_fault(fcport->bfa, event);
 }
}
