
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int spinlock; struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {int ctrl; scalar_t__ pcibar1; } ;


 int PCIDAS_AI_PACER_SW ;
 scalar_t__ PCIDAS_AI_REG ;
 int PCIDAS_CTRL_EOAIE ;
 int PCIDAS_CTRL_INTE ;
 scalar_t__ PCIDAS_CTRL_REG ;
 scalar_t__ PCIDAS_TRIG_REG ;
 int PCIDAS_TRIG_SEL_NONE ;
 int outw (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cb_pcidas_ai_cancel(struct comedi_device *dev,
          struct comedi_subdevice *s)
{
 struct cb_pcidas_private *devpriv = dev->private;
 unsigned long flags;

 spin_lock_irqsave(&dev->spinlock, flags);

 devpriv->ctrl &= ~(PCIDAS_CTRL_INTE | PCIDAS_CTRL_EOAIE);
 outw(devpriv->ctrl, devpriv->pcibar1 + PCIDAS_CTRL_REG);
 spin_unlock_irqrestore(&dev->spinlock, flags);


 outw(PCIDAS_TRIG_SEL_NONE, devpriv->pcibar1 + PCIDAS_TRIG_REG);
 outw(PCIDAS_AI_PACER_SW, devpriv->pcibar1 + PCIDAS_AI_REG);

 return 0;
}
