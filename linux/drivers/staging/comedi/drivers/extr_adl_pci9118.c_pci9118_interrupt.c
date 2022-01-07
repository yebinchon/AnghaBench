
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci9118_private {int ai12_startstop; unsigned int ai_ctrl; scalar_t__ usedma; scalar_t__ ai_neverending; int ai_do; scalar_t__ iobase_a; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int class_dev; int attached; struct pci9118_private* private; struct comedi_subdevice* read_subdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int events; } ;


 scalar_t__ AMCC_OP_REG_INTCSR ;
 unsigned int ANY_S593X_INT ;
 int COMEDI_CB_ERROR ;
 int COMEDI_CB_OVERFLOW ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int MASTER_ABORT_INT ;
 scalar_t__ PCI9118_AI_CTRL_REG ;
 unsigned int PCI9118_AI_STATUS_ADOR ;
 unsigned int PCI9118_AI_STATUS_ADOS ;
 unsigned int PCI9118_AI_STATUS_BOVER ;
 unsigned int PCI9118_AI_STATUS_DTH ;
 unsigned int PCI9118_AI_STATUS_NFULL ;
 scalar_t__ PCI9118_AI_STATUS_REG ;
 unsigned int PCI9118_INT_CTRL_DTRG ;
 scalar_t__ PCI9118_INT_CTRL_REG ;
 int START_AI_EXT ;
 int STOP_AI_EXT ;
 unsigned int TARGET_ABORT_INT ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int dev_err (int ,char*) ;
 int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int pci9118_ai_get_dma (struct comedi_device*,struct comedi_subdevice*) ;
 int pci9118_ai_get_onesample (struct comedi_device*,struct comedi_subdevice*) ;
 int pci9118_exttrg_enable (struct comedi_device*,int) ;
 int pci9118_start_pacer (struct comedi_device*,int ) ;

__attribute__((used)) static irqreturn_t pci9118_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 struct pci9118_private *devpriv = dev->private;
 unsigned int intsrc;
 unsigned int intcsr;
 unsigned int adstat;

 if (!dev->attached)
  return IRQ_NONE;

 intsrc = inl(dev->iobase + PCI9118_INT_CTRL_REG) & 0xf;
 intcsr = inl(devpriv->iobase_a + AMCC_OP_REG_INTCSR);

 if (!intsrc && !(intcsr & ANY_S593X_INT))
  return IRQ_NONE;

 outl(intcsr | 0x00ff0000, devpriv->iobase_a + AMCC_OP_REG_INTCSR);

 if (intcsr & MASTER_ABORT_INT) {
  dev_err(dev->class_dev, "AMCC IRQ - MASTER DMA ABORT!\n");
  s->async->events |= COMEDI_CB_ERROR;
  goto interrupt_exit;
 }

 if (intcsr & TARGET_ABORT_INT) {
  dev_err(dev->class_dev, "AMCC IRQ - TARGET DMA ABORT!\n");
  s->async->events |= COMEDI_CB_ERROR;
  goto interrupt_exit;
 }

 adstat = inl(dev->iobase + PCI9118_AI_STATUS_REG);
 if ((adstat & PCI9118_AI_STATUS_NFULL) == 0) {
  dev_err(dev->class_dev,
   "A/D FIFO Full status (Fatal Error!)\n");
  s->async->events |= COMEDI_CB_ERROR | COMEDI_CB_OVERFLOW;
  goto interrupt_exit;
 }
 if (adstat & PCI9118_AI_STATUS_BOVER) {
  dev_err(dev->class_dev,
   "A/D Burst Mode Overrun Status (Fatal Error!)\n");
  s->async->events |= COMEDI_CB_ERROR | COMEDI_CB_OVERFLOW;
  goto interrupt_exit;
 }
 if (adstat & PCI9118_AI_STATUS_ADOS) {
  dev_err(dev->class_dev, "A/D Over Speed Status (Warning!)\n");
  s->async->events |= COMEDI_CB_ERROR;
  goto interrupt_exit;
 }
 if (adstat & PCI9118_AI_STATUS_ADOR) {
  dev_err(dev->class_dev, "A/D Overrun Status (Fatal Error!)\n");
  s->async->events |= COMEDI_CB_ERROR | COMEDI_CB_OVERFLOW;
  goto interrupt_exit;
 }

 if (!devpriv->ai_do)
  return IRQ_HANDLED;

 if (devpriv->ai12_startstop) {
  if ((adstat & PCI9118_AI_STATUS_DTH) &&
      (intsrc & PCI9118_INT_CTRL_DTRG)) {

   if (devpriv->ai12_startstop & START_AI_EXT) {

    devpriv->ai12_startstop &= ~START_AI_EXT;
    if (!(devpriv->ai12_startstop & STOP_AI_EXT))
     pci9118_exttrg_enable(dev, 0);


    pci9118_start_pacer(dev, devpriv->ai_do);
    outl(devpriv->ai_ctrl,
         dev->iobase + PCI9118_AI_CTRL_REG);
   } else if (devpriv->ai12_startstop & STOP_AI_EXT) {

    devpriv->ai12_startstop &= ~STOP_AI_EXT;
    pci9118_exttrg_enable(dev, 0);


    devpriv->ai_neverending = 0;
   }
  }
 }

 if (devpriv->usedma)
  pci9118_ai_get_dma(dev, s);
 else
  pci9118_ai_get_onesample(dev, s);

interrupt_exit:
 comedi_handle_events(dev, s);
 return IRQ_HANDLED;
}
