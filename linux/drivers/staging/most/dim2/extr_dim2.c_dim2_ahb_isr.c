
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dim_channel {int dummy; } ;
struct dim2_hdm {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {unsigned long data; } ;


 int DMA_CHANNELS ;
 int IRQ_HANDLED ;
 TYPE_1__ dim2_tasklet ;
 int dim_lock ;
 int dim_service_ahb_int_irq (int ) ;
 int get_active_channels (struct dim2_hdm*,struct dim_channel**) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t dim2_ahb_isr(int irq, void *_dev)
{
 struct dim2_hdm *dev = _dev;
 struct dim_channel *buffer[DMA_CHANNELS + 1];
 unsigned long flags;

 spin_lock_irqsave(&dim_lock, flags);
 dim_service_ahb_int_irq(get_active_channels(dev, buffer));
 spin_unlock_irqrestore(&dim_lock, flags);

 dim2_tasklet.data = (unsigned long)dev;
 tasklet_schedule(&dim2_tasklet);
 return IRQ_HANDLED;
}
