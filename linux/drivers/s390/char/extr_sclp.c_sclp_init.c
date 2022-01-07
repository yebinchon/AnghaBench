
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;


 int BUG_ON (int) ;
 int EXT_IRQ_SERVICE_SIG ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 int INIT_LIST_HEAD (int *) ;
 int IRQ_SUBCLASS_SERVICE_SIGNAL ;
 scalar_t__ __get_free_page (int) ;
 int free_page (unsigned long) ;
 int irq_subclass_register (int ) ;
 int list_add (int *,int *) ;
 int register_external_irq (int ,int ) ;
 int register_reboot_notifier (int *) ;
 int sclp_check_interface () ;
 int sclp_init_mask (int) ;
 void* sclp_init_sccb ;
 scalar_t__ sclp_init_state ;
 scalar_t__ sclp_init_state_initialized ;
 scalar_t__ sclp_init_state_initializing ;
 scalar_t__ sclp_init_state_uninitialized ;
 int sclp_interrupt_handler ;
 int sclp_lock ;
 int sclp_queue_timer ;
 void* sclp_read_sccb ;
 int sclp_reboot_notifier ;
 int sclp_reg_list ;
 int sclp_req_queue ;
 int * sclp_req_queue_timeout ;
 int sclp_request_timer ;
 TYPE_1__ sclp_state_change_event ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_setup (int *,int *,int ) ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static int
sclp_init(void)
{
 unsigned long flags;
 int rc = 0;

 spin_lock_irqsave(&sclp_lock, flags);

 if (sclp_init_state != sclp_init_state_uninitialized)
  goto fail_unlock;
 sclp_init_state = sclp_init_state_initializing;
 sclp_read_sccb = (void *) __get_free_page(GFP_ATOMIC | GFP_DMA);
 sclp_init_sccb = (void *) __get_free_page(GFP_ATOMIC | GFP_DMA);
 BUG_ON(!sclp_read_sccb || !sclp_init_sccb);

 INIT_LIST_HEAD(&sclp_req_queue);
 INIT_LIST_HEAD(&sclp_reg_list);
 list_add(&sclp_state_change_event.list, &sclp_reg_list);
 timer_setup(&sclp_request_timer, ((void*)0), 0);
 timer_setup(&sclp_queue_timer, sclp_req_queue_timeout, 0);

 spin_unlock_irqrestore(&sclp_lock, flags);
 rc = sclp_check_interface();
 spin_lock_irqsave(&sclp_lock, flags);
 if (rc)
  goto fail_init_state_uninitialized;

 rc = register_reboot_notifier(&sclp_reboot_notifier);
 if (rc)
  goto fail_init_state_uninitialized;

 rc = register_external_irq(EXT_IRQ_SERVICE_SIG, sclp_interrupt_handler);
 if (rc)
  goto fail_unregister_reboot_notifier;
 sclp_init_state = sclp_init_state_initialized;
 spin_unlock_irqrestore(&sclp_lock, flags);


 irq_subclass_register(IRQ_SUBCLASS_SERVICE_SIGNAL);
 sclp_init_mask(1);
 return 0;

fail_unregister_reboot_notifier:
 unregister_reboot_notifier(&sclp_reboot_notifier);
fail_init_state_uninitialized:
 sclp_init_state = sclp_init_state_uninitialized;
 free_page((unsigned long) sclp_read_sccb);
 free_page((unsigned long) sclp_init_sccb);
fail_unlock:
 spin_unlock_irqrestore(&sclp_lock, flags);
 return rc;
}
