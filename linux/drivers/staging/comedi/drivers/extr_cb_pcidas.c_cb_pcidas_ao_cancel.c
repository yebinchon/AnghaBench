
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int spinlock; struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {int ctrl; int ao_ctrl; scalar_t__ pcibar1; } ;


 int PCIDAS_AO_DACEN ;
 int PCIDAS_AO_PACER_MASK ;
 scalar_t__ PCIDAS_AO_REG ;
 int PCIDAS_CTRL_DAEMIE ;
 int PCIDAS_CTRL_DAHFIE ;
 scalar_t__ PCIDAS_CTRL_REG ;
 int outw (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cb_pcidas_ao_cancel(struct comedi_device *dev,
          struct comedi_subdevice *s)
{
 struct cb_pcidas_private *devpriv = dev->private;
 unsigned long flags;

 spin_lock_irqsave(&dev->spinlock, flags);

 devpriv->ctrl &= ~(PCIDAS_CTRL_DAHFIE | PCIDAS_CTRL_DAEMIE);
 outw(devpriv->ctrl, devpriv->pcibar1 + PCIDAS_CTRL_REG);


 devpriv->ao_ctrl &= ~(PCIDAS_AO_DACEN | PCIDAS_AO_PACER_MASK);
 outw(devpriv->ao_ctrl, devpriv->pcibar1 + PCIDAS_AO_REG);
 spin_unlock_irqrestore(&dev->spinlock, flags);

 return 0;
}
