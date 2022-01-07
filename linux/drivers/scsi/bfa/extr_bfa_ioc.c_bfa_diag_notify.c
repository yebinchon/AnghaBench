
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; void* status; int cbarg; int (* cbfn ) (int ,void*) ;} ;
struct TYPE_3__ {int lock; void* status; int cbarg; int (* cbfn ) (int ,void*) ;} ;
struct bfa_diag_s {int block; void* status; int cbarg; int (* cbfn ) (int ,void*) ;int timer_active; int timer; TYPE_2__ tsensor; TYPE_1__ fwping; } ;
typedef enum bfa_ioc_event_e { ____Placeholder_bfa_ioc_event_e } bfa_ioc_event_e ;




 void* BFA_STATUS_IOC_FAILURE ;
 int bfa_timer_stop (int *) ;
 int bfa_trc (struct bfa_diag_s*,int) ;
 int stub1 (int ,void*) ;
 int stub2 (int ,void*) ;
 int stub3 (int ,void*) ;

__attribute__((used)) static void
bfa_diag_notify(void *diag_arg, enum bfa_ioc_event_e event)
{
 struct bfa_diag_s *diag = diag_arg;

 bfa_trc(diag, event);
 bfa_trc(diag, diag->block);
 bfa_trc(diag, diag->fwping.lock);
 bfa_trc(diag, diag->tsensor.lock);

 switch (event) {
 case 129:
 case 128:
  if (diag->fwping.lock) {
   diag->fwping.status = BFA_STATUS_IOC_FAILURE;
   diag->fwping.cbfn(diag->fwping.cbarg,
     diag->fwping.status);
   diag->fwping.lock = 0;
  }

  if (diag->tsensor.lock) {
   diag->tsensor.status = BFA_STATUS_IOC_FAILURE;
   diag->tsensor.cbfn(diag->tsensor.cbarg,
        diag->tsensor.status);
   diag->tsensor.lock = 0;
  }

  if (diag->block) {
   if (diag->timer_active) {
    bfa_timer_stop(&diag->timer);
    diag->timer_active = 0;
   }

   diag->status = BFA_STATUS_IOC_FAILURE;
   diag->cbfn(diag->cbarg, diag->status);
   diag->block = 0;
  }
  break;

 default:
  break;
 }
}
