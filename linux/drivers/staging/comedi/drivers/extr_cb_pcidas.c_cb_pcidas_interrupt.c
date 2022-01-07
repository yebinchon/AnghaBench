
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int spinlock; int attached; struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {int amcc_intcsr; unsigned int ctrl; scalar_t__ pcibar1; scalar_t__ amcc; } ;
typedef int irqreturn_t ;


 scalar_t__ AMCC_OP_REG_IMB4 ;
 scalar_t__ AMCC_OP_REG_INTCSR ;
 int INTCSR_INBOX_INTR_STATUS ;
 unsigned int INTCSR_INTR_ASSERTED ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int PCIDAS_CTRL_AI_INT ;
 unsigned int PCIDAS_CTRL_AO_INT ;
 scalar_t__ PCIDAS_CTRL_REG ;
 unsigned int cb_pcidas_ai_interrupt (struct comedi_device*,unsigned int) ;
 unsigned int cb_pcidas_ao_interrupt (struct comedi_device*,unsigned int) ;
 unsigned int inl (scalar_t__) ;
 int inl_p (scalar_t__) ;
 unsigned int inw (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int outw (unsigned int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t cb_pcidas_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct cb_pcidas_private *devpriv = dev->private;
 unsigned int irq_clr = 0;
 unsigned int amcc_status;
 unsigned int status;

 if (!dev->attached)
  return IRQ_NONE;

 amcc_status = inl(devpriv->amcc + AMCC_OP_REG_INTCSR);

 if ((INTCSR_INTR_ASSERTED & amcc_status) == 0)
  return IRQ_NONE;


 inl_p(devpriv->amcc + AMCC_OP_REG_IMB4);

 outl(devpriv->amcc_intcsr | INTCSR_INBOX_INTR_STATUS,
      devpriv->amcc + AMCC_OP_REG_INTCSR);

 status = inw(devpriv->pcibar1 + PCIDAS_CTRL_REG);


 if (status & PCIDAS_CTRL_AO_INT)
  irq_clr |= cb_pcidas_ao_interrupt(dev, status);


 if (status & PCIDAS_CTRL_AI_INT)
  irq_clr |= cb_pcidas_ai_interrupt(dev, status);

 if (irq_clr) {
  unsigned long flags;

  spin_lock_irqsave(&dev->spinlock, flags);
  outw(devpriv->ctrl | irq_clr,
       devpriv->pcibar1 + PCIDAS_CTRL_REG);
  spin_unlock_irqrestore(&dev->spinlock, flags);
 }

 return IRQ_HANDLED;
}
