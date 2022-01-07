
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpdi_private {int plx9080_mmio; } ;
struct comedi_device {int spinlock; struct hpdi_private* private; } ;


 int plx9080_abort_dma (int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gsc_hpdi_abort_dma(struct comedi_device *dev, unsigned int channel)
{
 struct hpdi_private *devpriv = dev->private;
 unsigned long flags;


 spin_lock_irqsave(&dev->spinlock, flags);

 plx9080_abort_dma(devpriv->plx9080_mmio, channel);

 spin_unlock_irqrestore(&dev->spinlock, flags);
}
