
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 long ERESTARTSYS ;
 int ETIMEDOUT ;
 int completion ;
 int dispc_irq_wait_handler ;
 int omap_dispc_register_isr (int ,int *,int ) ;
 int omap_dispc_unregister_isr (int ,int *,int ) ;
 long wait_for_completion_interruptible_timeout (int *,unsigned long) ;

int omap_dispc_wait_for_irq_interruptible_timeout(u32 irqmask,
  unsigned long timeout)
{

 int r;
 long time_left;
 DECLARE_COMPLETION_ONSTACK(completion);

 r = omap_dispc_register_isr(dispc_irq_wait_handler, &completion,
   irqmask);

 if (r)
  return r;

 time_left = wait_for_completion_interruptible_timeout(&completion,
   timeout);

 omap_dispc_unregister_isr(dispc_irq_wait_handler, &completion, irqmask);

 if (time_left == 0)
  return -ETIMEDOUT;

 if (time_left == -ERESTARTSYS)
  return -ERESTARTSYS;

 return 0;
}
