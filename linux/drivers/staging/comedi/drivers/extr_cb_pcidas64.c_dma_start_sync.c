
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_private {scalar_t__ plx9080_iobase; } ;
struct comedi_device {int spinlock; struct pcidas64_private* private; } ;


 int PLX_DMACSR_CLEARINTR ;
 int PLX_DMACSR_ENABLE ;
 int PLX_DMACSR_START ;
 scalar_t__ PLX_REG_DMACSR (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static inline void dma_start_sync(struct comedi_device *dev,
      unsigned int channel)
{
 struct pcidas64_private *devpriv = dev->private;
 unsigned long flags;


 spin_lock_irqsave(&dev->spinlock, flags);
 writeb(PLX_DMACSR_ENABLE | PLX_DMACSR_START | PLX_DMACSR_CLEARINTR,
        devpriv->plx9080_iobase + PLX_REG_DMACSR(channel));
 spin_unlock_irqrestore(&dev->spinlock, flags);
}
