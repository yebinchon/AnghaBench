
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pwwn; } ;
struct TYPE_3__ {TYPE_2__ port_cfg; } ;
struct bfa_fcs_fabric_s {int fcs; TYPE_1__ bport; } ;
typedef enum bfa_fcs_fabric_event { ____Placeholder_bfa_fcs_fabric_event } bfa_fcs_fabric_event ;





 int bfa_fcs_fabric_init (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_fabric_sm_created ;
 int bfa_fcs_lport_init (TYPE_1__*,TYPE_2__*) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_fabric_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_fabric_sm_uninit(struct bfa_fcs_fabric_s *fabric,
    enum bfa_fcs_fabric_event event)
{
 bfa_trc(fabric->fcs, fabric->bport.port_cfg.pwwn);
 bfa_trc(fabric->fcs, event);

 switch (event) {
 case 130:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_created);
  bfa_fcs_fabric_init(fabric);
  bfa_fcs_lport_init(&fabric->bport, &fabric->bport.port_cfg);
  break;

 case 128:
 case 129:
  break;

 default:
  bfa_sm_fault(fabric->fcs, event);
 }
}
