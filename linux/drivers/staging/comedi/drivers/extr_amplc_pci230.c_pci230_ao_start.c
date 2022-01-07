
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci230_private {int ao_cmd_started; int hwver; unsigned short daccon; int isr_spinlock; int ier; scalar_t__ daqio; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ iobase; struct pci230_private* private; } ;
struct comedi_cmd {int scan_begin_src; int scan_begin_arg; } ;
struct comedi_async {int inttrig; struct comedi_cmd cmd; } ;


 int CR_INVERT ;
 int GAT_VCC ;
 unsigned short PCI230P2_DAC_TRIG_EXTN ;
 unsigned short PCI230P2_DAC_TRIG_EXTP ;
 unsigned short PCI230P2_DAC_TRIG_MASK ;
 unsigned short PCI230P2_DAC_TRIG_NONE ;
 unsigned short PCI230P2_DAC_TRIG_SW ;
 unsigned short PCI230P2_DAC_TRIG_Z2CT1 ;
 int PCI230P2_INT_DAC ;
 scalar_t__ PCI230_DACCON ;
 scalar_t__ PCI230_INT_SCE ;
 int PCI230_INT_ZCLK_CT1 ;
 scalar_t__ PCI230_ZGAT_SCE ;



 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int outb (int ,scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;
 int pci230_ao_inttrig_scan_begin ;
 int pci230_gat_config (int,int ) ;
 int pci230_handle_ao_fifo (struct comedi_device*,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pci230_ao_start(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct pci230_private *devpriv = dev->private;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 unsigned long irqflags;

 devpriv->ao_cmd_started = 1;

 if (devpriv->hwver >= 2) {

  unsigned short scantrig;
  bool run;


  run = pci230_handle_ao_fifo(dev, s);
  comedi_handle_events(dev, s);
  if (!run) {

   return;
  }

  switch (cmd->scan_begin_src) {
  case 128:
   scantrig = PCI230P2_DAC_TRIG_Z2CT1;
   break;
  case 130:

   if ((cmd->scan_begin_arg & CR_INVERT) == 0) {

    scantrig = PCI230P2_DAC_TRIG_EXTP;
   } else {

    scantrig = PCI230P2_DAC_TRIG_EXTN;
   }
   break;
  case 129:
   scantrig = PCI230P2_DAC_TRIG_SW;
   break;
  default:

   scantrig = PCI230P2_DAC_TRIG_NONE;
   break;
  }
  devpriv->daccon =
      (devpriv->daccon & ~PCI230P2_DAC_TRIG_MASK) | scantrig;
  outw(devpriv->daccon, devpriv->daqio + PCI230_DACCON);
 }
 switch (cmd->scan_begin_src) {
 case 128:
  if (devpriv->hwver < 2) {


   spin_lock_irqsave(&devpriv->isr_spinlock, irqflags);
   devpriv->ier |= PCI230_INT_ZCLK_CT1;
   outb(devpriv->ier, dev->iobase + PCI230_INT_SCE);
   spin_unlock_irqrestore(&devpriv->isr_spinlock,
            irqflags);
  }

  outb(pci230_gat_config(1, GAT_VCC),
       dev->iobase + PCI230_ZGAT_SCE);
  break;
 case 129:
  async->inttrig = pci230_ao_inttrig_scan_begin;
  break;
 }
 if (devpriv->hwver >= 2) {

  spin_lock_irqsave(&devpriv->isr_spinlock, irqflags);
  devpriv->ier |= PCI230P2_INT_DAC;
  outb(devpriv->ier, dev->iobase + PCI230_INT_SCE);
  spin_unlock_irqrestore(&devpriv->isr_spinlock, irqflags);
 }
}
