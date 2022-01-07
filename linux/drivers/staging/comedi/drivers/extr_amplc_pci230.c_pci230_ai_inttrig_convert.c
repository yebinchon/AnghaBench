
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci230_private {int adccon; scalar_t__ hwver; int ai_stop_spinlock; int ai_cmd_started; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int pacer; struct pci230_private* private; } ;


 int EINVAL ;
 int I8254_MODE0 ;
 int I8254_MODE1 ;
 int PCI230_ADC_IM_DIF ;
 int PCI230_ADC_IM_MASK ;
 int comedi_8254_set_mode (int ,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (unsigned int) ;

__attribute__((used)) static int pci230_ai_inttrig_convert(struct comedi_device *dev,
         struct comedi_subdevice *s,
         unsigned int trig_num)
{
 struct pci230_private *devpriv = dev->private;
 unsigned long irqflags;
 unsigned int delayus;

 if (trig_num)
  return -EINVAL;

 spin_lock_irqsave(&devpriv->ai_stop_spinlock, irqflags);
 if (!devpriv->ai_cmd_started) {
  spin_unlock_irqrestore(&devpriv->ai_stop_spinlock, irqflags);
  return 1;
 }




 comedi_8254_set_mode(dev->pacer, 2, I8254_MODE0);
 comedi_8254_set_mode(dev->pacer, 2, I8254_MODE1);







 if ((devpriv->adccon & PCI230_ADC_IM_MASK) == PCI230_ADC_IM_DIF &&
     devpriv->hwver == 0) {

  delayus = 8;
 } else {

  delayus = 4;
 }
 spin_unlock_irqrestore(&devpriv->ai_stop_spinlock, irqflags);
 udelay(delayus);
 return 1;
}
