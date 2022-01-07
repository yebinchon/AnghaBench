
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_flash_s {int op_busy; int status; int cbarg; int (* cbfn ) (int ,int ) ;} ;
typedef enum bfa_ioc_event_e { ____Placeholder_bfa_ioc_event_e } bfa_ioc_event_e ;




 int BFA_STATUS_IOC_FAILURE ;
 int bfa_trc (struct bfa_flash_s*,int) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
bfa_flash_notify(void *cbarg, enum bfa_ioc_event_e event)
{
 struct bfa_flash_s *flash = cbarg;

 bfa_trc(flash, event);
 switch (event) {
 case 129:
 case 128:
  if (flash->op_busy) {
   flash->status = BFA_STATUS_IOC_FAILURE;
   flash->cbfn(flash->cbarg, flash->status);
   flash->op_busy = 0;
  }
  break;

 default:
  break;
 }
}
