
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fru_s {int op_busy; int status; int cbarg; int (* cbfn ) (int ,int ) ;} ;
typedef enum bfa_ioc_event_e { ____Placeholder_bfa_ioc_event_e } bfa_ioc_event_e ;




 int BFA_STATUS_IOC_FAILURE ;
 int bfa_trc (struct bfa_fru_s*,int) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
bfa_fru_notify(void *cbarg, enum bfa_ioc_event_e event)
{
 struct bfa_fru_s *fru = cbarg;

 bfa_trc(fru, event);

 switch (event) {
 case 129:
 case 128:
  if (fru->op_busy) {
   fru->status = BFA_STATUS_IOC_FAILURE;
   fru->cbfn(fru->cbarg, fru->status);
   fru->op_busy = 0;
  }
  break;

 default:
  break;
 }
}
