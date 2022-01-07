
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci230_private {int ao_cmd_started; int hwver; unsigned char ier; scalar_t__ intr_cpuid; int daccon; scalar_t__ daqio; int isr_spinlock; scalar_t__ intr_running; int ao_stop_spinlock; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; struct pci230_private* private; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 int OWNER_AOCMD ;
 int PCI230P2_DAC_FIFO_RESET ;
 int PCI230P2_DAC_FIFO_UNDERRUN_CLEAR ;
 unsigned char PCI230P2_INT_DAC ;
 scalar_t__ PCI230_DACCON ;
 int PCI230_DAC_OR_MASK ;
 scalar_t__ PCI230_INT_SCE ;
 unsigned char PCI230_INT_ZCLK_CT1 ;
 scalar_t__ THISCPU ;
 scalar_t__ TRIG_TIMER ;
 int outb (unsigned char,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int pci230_cancel_ct (struct comedi_device*,int) ;
 int pci230_release_all_resources (struct comedi_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pci230_ao_stop(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 struct pci230_private *devpriv = dev->private;
 unsigned long irqflags;
 unsigned char intsrc;
 bool started;
 struct comedi_cmd *cmd;

 spin_lock_irqsave(&devpriv->ao_stop_spinlock, irqflags);
 started = devpriv->ao_cmd_started;
 devpriv->ao_cmd_started = 0;
 spin_unlock_irqrestore(&devpriv->ao_stop_spinlock, irqflags);
 if (!started)
  return;
 cmd = &s->async->cmd;
 if (cmd->scan_begin_src == TRIG_TIMER) {

  pci230_cancel_ct(dev, 1);
 }

 if (devpriv->hwver < 2) {

  intsrc = PCI230_INT_ZCLK_CT1;
 } else {

  intsrc = PCI230P2_INT_DAC;
 }




 spin_lock_irqsave(&devpriv->isr_spinlock, irqflags);
 devpriv->ier &= ~intsrc;
 while (devpriv->intr_running && devpriv->intr_cpuid != THISCPU) {
  spin_unlock_irqrestore(&devpriv->isr_spinlock, irqflags);
  spin_lock_irqsave(&devpriv->isr_spinlock, irqflags);
 }
 outb(devpriv->ier, dev->iobase + PCI230_INT_SCE);
 spin_unlock_irqrestore(&devpriv->isr_spinlock, irqflags);
 if (devpriv->hwver >= 2) {




  devpriv->daccon &= PCI230_DAC_OR_MASK;
  outw(devpriv->daccon | PCI230P2_DAC_FIFO_RESET |
       PCI230P2_DAC_FIFO_UNDERRUN_CLEAR,
       devpriv->daqio + PCI230_DACCON);
 }

 pci230_release_all_resources(dev, OWNER_AOCMD);
}
