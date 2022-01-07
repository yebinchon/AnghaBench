
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_private {int intr_enable_bits; scalar_t__ main_iobase; } ;
struct comedi_device {int spinlock; struct pcidas64_private* private; } ;


 int ADC_INTR_SRC_MASK ;
 int EN_ADC_ACTIVE_INTR_BIT ;
 int EN_ADC_DONE_INTR_BIT ;
 int EN_ADC_INTR_SRC_BIT ;
 int EN_ADC_OVERRUN_BIT ;
 int EN_ADC_STOP_INTR_BIT ;
 scalar_t__ INTR_ENABLE_REG ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void disable_ai_interrupts(struct comedi_device *dev)
{
 struct pcidas64_private *devpriv = dev->private;
 unsigned long flags;

 spin_lock_irqsave(&dev->spinlock, flags);
 devpriv->intr_enable_bits &=
  ~EN_ADC_INTR_SRC_BIT & ~EN_ADC_DONE_INTR_BIT &
  ~EN_ADC_ACTIVE_INTR_BIT & ~EN_ADC_STOP_INTR_BIT &
  ~EN_ADC_OVERRUN_BIT & ~ADC_INTR_SRC_MASK;
 writew(devpriv->intr_enable_bits,
        devpriv->main_iobase + INTR_ENABLE_REG);
 spin_unlock_irqrestore(&dev->spinlock, flags);
}
