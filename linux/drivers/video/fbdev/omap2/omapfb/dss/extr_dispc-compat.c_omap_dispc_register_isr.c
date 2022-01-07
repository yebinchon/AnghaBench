
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
 int EBUSY ;
 int EINVAL ;
 int _omap_dispc_set_irqs () ;
 TYPE_1__ dispc_compat ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int omap_dispc_register_isr(omap_dispc_isr_t isr, void *arg, u32 mask)
{
 int i;
 int ret;
 unsigned long flags;
 struct omap_dispc_isr_data *isr_data;

 if (isr == ((void*)0))
  return -EINVAL;

 spin_lock_irqsave(&dispc_compat.irq_lock, flags);


 for (i = 0; i < DISPC_MAX_NR_ISRS; i++) {
  isr_data = &dispc_compat.registered_isr[i];
  if (isr_data->isr == isr && isr_data->arg == arg &&
    isr_data->mask == mask) {
   ret = -EINVAL;
   goto err;
  }
 }

 isr_data = ((void*)0);
 ret = -EBUSY;

 for (i = 0; i < DISPC_MAX_NR_ISRS; i++) {
  isr_data = &dispc_compat.registered_isr[i];

  if (isr_data->isr != ((void*)0))
   continue;

  isr_data->isr = isr;
  isr_data->arg = arg;
  isr_data->mask = mask;
  ret = 0;

  break;
 }

 if (ret)
  goto err;

 _omap_dispc_set_irqs();

 spin_unlock_irqrestore(&dispc_compat.irq_lock, flags);

 return 0;
err:
 spin_unlock_irqrestore(&dispc_compat.irq_lock, flags);

 return ret;
}
