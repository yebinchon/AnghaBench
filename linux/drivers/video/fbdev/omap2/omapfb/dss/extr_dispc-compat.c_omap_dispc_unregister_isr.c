
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct omap_dispc_isr_data {void* arg; scalar_t__ mask; int * isr; } ;
typedef int * omap_dispc_isr_t ;
struct TYPE_2__ {int irq_lock; struct omap_dispc_isr_data* registered_isr; } ;


 int DISPC_MAX_NR_ISRS ;
 int EINVAL ;
 int _omap_dispc_set_irqs () ;
 TYPE_1__ dispc_compat ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int omap_dispc_unregister_isr(omap_dispc_isr_t isr, void *arg, u32 mask)
{
 int i;
 unsigned long flags;
 int ret = -EINVAL;
 struct omap_dispc_isr_data *isr_data;

 spin_lock_irqsave(&dispc_compat.irq_lock, flags);

 for (i = 0; i < DISPC_MAX_NR_ISRS; i++) {
  isr_data = &dispc_compat.registered_isr[i];
  if (isr_data->isr != isr || isr_data->arg != arg ||
    isr_data->mask != mask)
   continue;



  isr_data->isr = ((void*)0);
  isr_data->arg = ((void*)0);
  isr_data->mask = 0;

  ret = 0;
  break;
 }

 if (ret == 0)
  _omap_dispc_set_irqs();

 spin_unlock_irqrestore(&dispc_compat.irq_lock, flags);

 return ret;
}
