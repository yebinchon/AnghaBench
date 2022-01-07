
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dim2_hdm {size_t atx_idx; TYPE_1__* hch; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ is_initialized; } ;


 int IRQ_HANDLED ;
 int dim_lock ;
 int dim_service_mlb_int_irq () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int try_start_dim_transfer (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t dim2_mlb_isr(int irq, void *_dev)
{
 struct dim2_hdm *dev = _dev;
 unsigned long flags;

 spin_lock_irqsave(&dim_lock, flags);
 dim_service_mlb_int_irq();
 spin_unlock_irqrestore(&dim_lock, flags);

 if (dev->atx_idx >= 0 && dev->hch[dev->atx_idx].is_initialized)
  while (!try_start_dim_transfer(dev->hch + dev->atx_idx))
   continue;

 return IRQ_HANDLED;
}
