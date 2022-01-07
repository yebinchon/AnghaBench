
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci9111_private_data {scalar_t__ lcr_io_base; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int spinlock; scalar_t__ iobase; int class_dev; int attached; struct comedi_subdevice* read_subdev; struct pci9111_private_data* private; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;
typedef int irqreturn_t ;


 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ PCI9111_AI_RANGE_STAT_REG ;
 unsigned int PCI9111_AI_STAT_FF_FF ;
 unsigned int PCI9111_AI_STAT_FF_HF ;
 scalar_t__ PCI9111_INT_CLR_REG ;
 unsigned char PCI9111_LI1_ACTIVE ;
 unsigned char PCI9111_LI2_ACTIVE ;
 scalar_t__ PLX9052_INTCSR ;
 unsigned char PLX9052_INTCSR_PCIENAB ;
 scalar_t__ TRIG_COUNT ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int dev_dbg (int ,char*) ;
 void* inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int pci9111_handle_fifo_half_full (struct comedi_device*,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t pci9111_interrupt(int irq, void *p_device)
{
 struct comedi_device *dev = p_device;
 struct pci9111_private_data *dev_private = dev->private;
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_async *async;
 struct comedi_cmd *cmd;
 unsigned int status;
 unsigned long irq_flags;
 unsigned char intcsr;

 if (!dev->attached) {


  return IRQ_NONE;
 }

 async = s->async;
 cmd = &async->cmd;

 spin_lock_irqsave(&dev->spinlock, irq_flags);


 intcsr = inb(dev_private->lcr_io_base + PLX9052_INTCSR);
 if (!(((intcsr & PLX9052_INTCSR_PCIENAB) != 0) &&
       (((intcsr & PCI9111_LI1_ACTIVE) == PCI9111_LI1_ACTIVE) ||
        ((intcsr & PCI9111_LI2_ACTIVE) == PCI9111_LI2_ACTIVE)))) {


  spin_unlock_irqrestore(&dev->spinlock, irq_flags);
  return IRQ_NONE;
 }

 if ((intcsr & PCI9111_LI1_ACTIVE) == PCI9111_LI1_ACTIVE) {


  status = inb(dev->iobase + PCI9111_AI_RANGE_STAT_REG);


  if (!(status & PCI9111_AI_STAT_FF_FF)) {
   spin_unlock_irqrestore(&dev->spinlock, irq_flags);
   dev_dbg(dev->class_dev, "fifo overflow\n");
   outb(0, dev->iobase + PCI9111_INT_CLR_REG);
   async->events |= COMEDI_CB_ERROR;
   comedi_handle_events(dev, s);

   return IRQ_HANDLED;
  }


  if (!(status & PCI9111_AI_STAT_FF_HF))
   pci9111_handle_fifo_half_full(dev, s);
 }

 if (cmd->stop_src == TRIG_COUNT && async->scans_done >= cmd->stop_arg)
  async->events |= COMEDI_CB_EOA;

 outb(0, dev->iobase + PCI9111_INT_CLR_REG);

 spin_unlock_irqrestore(&dev->spinlock, irq_flags);

 comedi_handle_events(dev, s);

 return IRQ_HANDLED;
}
