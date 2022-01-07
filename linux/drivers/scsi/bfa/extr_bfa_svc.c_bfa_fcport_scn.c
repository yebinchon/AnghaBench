
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ trunked; } ;
struct bfa_fcport_s {int ln; TYPE_1__ cfg; } ;
typedef enum bfa_port_linkstate { ____Placeholder_bfa_port_linkstate } bfa_port_linkstate ;
typedef int bfa_boolean_t ;


 int BFA_FCPORT_LN_SM_LINKDOWN ;
 int BFA_FCPORT_LN_SM_LINKUP ;


 int WARN_ON (int) ;
 int bfa_sm_send_event (int *,int ) ;

__attribute__((used)) static void
bfa_fcport_scn(struct bfa_fcport_s *fcport, enum bfa_port_linkstate event,
 bfa_boolean_t trunk)
{
 if (fcport->cfg.trunked && !trunk)
  return;

 switch (event) {
 case 128:
  bfa_sm_send_event(&fcport->ln, BFA_FCPORT_LN_SM_LINKUP);
  break;
 case 129:
  bfa_sm_send_event(&fcport->ln, BFA_FCPORT_LN_SM_LINKDOWN);
  break;
 default:
  WARN_ON(1);
 }
}
