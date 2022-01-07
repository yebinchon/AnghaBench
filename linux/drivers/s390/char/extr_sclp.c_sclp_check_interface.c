
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int response_code; } ;
struct init_sccb {TYPE_1__ header; } ;
struct TYPE_4__ {scalar_t__ status; int command; scalar_t__ sccb; } ;


 int EBUSY ;
 int EIO ;
 int EXT_IRQ_SERVICE_SIG ;
 int HZ ;
 int IRQ_SUBCLASS_SERVICE_SIGNAL ;
 int SCLP_INIT_RETRY ;
 scalar_t__ SCLP_REQ_DONE ;
 scalar_t__ SCLP_REQ_RUNNING ;
 int SCLP_RETRY_INTERVAL ;
 int __sclp_make_init_req (int ,int ) ;
 int __sclp_set_request_timer (int,int ) ;
 int del_timer (int *) ;
 int irq_subclass_register (int ) ;
 int irq_subclass_unregister (int ) ;
 int register_external_irq (int ,int ) ;
 int sclp_check_handler ;
 int sclp_check_timeout ;
 TYPE_2__ sclp_init_req ;
 int sclp_lock ;
 int sclp_mask_compat_mode ;
 int sclp_request_timer ;
 int sclp_running_state ;
 int sclp_running_state_running ;
 int sclp_service_call (int ,struct init_sccb*) ;
 int sclp_sync_wait () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unregister_external_irq (int ,int ) ;

__attribute__((used)) static int
sclp_check_interface(void)
{
 struct init_sccb *sccb;
 unsigned long flags;
 int retry;
 int rc;

 spin_lock_irqsave(&sclp_lock, flags);

 rc = register_external_irq(EXT_IRQ_SERVICE_SIG, sclp_check_handler);
 if (rc) {
  spin_unlock_irqrestore(&sclp_lock, flags);
  return rc;
 }
 for (retry = 0; retry <= SCLP_INIT_RETRY; retry++) {
  __sclp_make_init_req(0, 0);
  sccb = (struct init_sccb *) sclp_init_req.sccb;
  rc = sclp_service_call(sclp_init_req.command, sccb);
  if (rc == -EIO)
   break;
  sclp_init_req.status = SCLP_REQ_RUNNING;
  sclp_running_state = sclp_running_state_running;
  __sclp_set_request_timer(SCLP_RETRY_INTERVAL * HZ,
      sclp_check_timeout);
  spin_unlock_irqrestore(&sclp_lock, flags);


  irq_subclass_register(IRQ_SUBCLASS_SERVICE_SIGNAL);

  sclp_sync_wait();


  irq_subclass_unregister(IRQ_SUBCLASS_SERVICE_SIGNAL);
  spin_lock_irqsave(&sclp_lock, flags);
  del_timer(&sclp_request_timer);
  rc = -EBUSY;
  if (sclp_init_req.status == SCLP_REQ_DONE) {
   if (sccb->header.response_code == 0x20) {
    rc = 0;
    break;
   } else if (sccb->header.response_code == 0x74f0) {
    if (!sclp_mask_compat_mode) {
     sclp_mask_compat_mode = 1;
     retry = 0;
    }
   }
  }
 }
 unregister_external_irq(EXT_IRQ_SERVICE_SIG, sclp_check_handler);
 spin_unlock_irqrestore(&sclp_lock, flags);
 return rc;
}
