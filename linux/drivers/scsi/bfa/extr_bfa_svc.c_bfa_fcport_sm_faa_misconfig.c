
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_fcport_s {TYPE_1__* bfa; } ;
typedef enum bfa_fcport_sm_event { ____Placeholder_bfa_fcport_sm_event } bfa_fcport_sm_event ;
struct TYPE_3__ {int plog; } ;


 int BFA_FALSE ;






 int BFA_PL_EID_PORT_DISABLE ;
 int BFA_PL_MID_HAL ;
 int BFA_PORT_AEN_DISABLE ;
 int BFA_PORT_LINKDOWN ;
 int bfa_fcport_aen_post (struct bfa_fcport_s*,int ) ;
 int bfa_fcport_reset_linkinfo (struct bfa_fcport_s*) ;
 int bfa_fcport_scn (struct bfa_fcport_s*,int ,int ) ;
 int bfa_fcport_send_disable (struct bfa_fcport_s*) ;
 int bfa_fcport_sm_disabling ;
 int bfa_fcport_sm_disabling_qwait ;
 int bfa_fcport_sm_iocdown ;
 int bfa_fcport_sm_stopped ;
 int bfa_plog_str (int ,int ,int ,int ,char*) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_fcport_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_fcport_sm_faa_misconfig(struct bfa_fcport_s *fcport,
       enum bfa_fcport_sm_event event)
{
 bfa_trc(fcport->bfa, event);

 switch (event) {
 case 132:
 case 131:
 case 129:



  break;

 case 133:
  if (bfa_fcport_send_disable(fcport))
   bfa_sm_set_state(fcport, bfa_fcport_sm_disabling);
  else
   bfa_sm_set_state(fcport, bfa_fcport_sm_disabling_qwait);

  bfa_fcport_reset_linkinfo(fcport);
  bfa_fcport_scn(fcport, BFA_PORT_LINKDOWN, BFA_FALSE);
  bfa_plog_str(fcport->bfa->plog, BFA_PL_MID_HAL,
        BFA_PL_EID_PORT_DISABLE, 0, "Port Disable");
  bfa_fcport_aen_post(fcport, BFA_PORT_AEN_DISABLE);
  break;

 case 128:
  bfa_sm_set_state(fcport, bfa_fcport_sm_stopped);
  break;

 case 130:
  bfa_fcport_reset_linkinfo(fcport);
  bfa_fcport_scn(fcport, BFA_PORT_LINKDOWN, BFA_FALSE);
  bfa_sm_set_state(fcport, bfa_fcport_sm_iocdown);
  break;

 default:
  bfa_sm_fault(fcport->bfa, event);
 }
}
