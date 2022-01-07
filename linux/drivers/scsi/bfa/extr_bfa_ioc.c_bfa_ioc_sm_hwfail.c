
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc_s {int bfa; TYPE_1__* cbfn; } ;
typedef enum ioc_event { ____Placeholder_ioc_event } ioc_event ;
struct TYPE_2__ {int (* disable_cbfn ) (int ) ;int (* enable_cbfn ) (int ,int ) ;} ;


 int BFA_STATUS_IOC_FAILURE ;




 int bfa_fsm_set_state (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_sm_uninit ;
 int bfa_sm_fault (struct bfa_ioc_s*,int) ;
 int bfa_trc (struct bfa_ioc_s*,int) ;
 int stub1 (int ,int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void
bfa_ioc_sm_hwfail(struct bfa_ioc_s *ioc, enum ioc_event event)
{
 bfa_trc(ioc, event);

 switch (event) {
 case 129:
  ioc->cbfn->enable_cbfn(ioc->bfa, BFA_STATUS_IOC_FAILURE);
  break;

 case 130:
  ioc->cbfn->disable_cbfn(ioc->bfa);
  break;

 case 131:
  bfa_fsm_set_state(ioc, bfa_ioc_sm_uninit);
  break;

 case 128:

  break;

 default:
  bfa_sm_fault(ioc, event);
 }
}
