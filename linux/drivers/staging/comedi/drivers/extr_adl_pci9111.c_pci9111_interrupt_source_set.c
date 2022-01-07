
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;
typedef enum pci9111_ISC1_sources { ____Placeholder_pci9111_ISC1_sources } pci9111_ISC1_sources ;
typedef enum pci9111_ISC0_sources { ____Placeholder_pci9111_ISC0_sources } pci9111_ISC0_sources ;


 scalar_t__ PCI9111_AI_TRIG_CTRL_REG ;
 int PCI9111_INT_CTRL_ISC0 ;
 int PCI9111_INT_CTRL_ISC1 ;
 scalar_t__ PCI9111_INT_CTRL_REG ;
 int inb (scalar_t__) ;
 int irq_on_external_trigger ;
 int irq_on_fifo_half_full ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void pci9111_interrupt_source_set(struct comedi_device *dev,
      enum pci9111_ISC0_sources irq_0_source,
      enum pci9111_ISC1_sources irq_1_source)
{
 int flags;


 flags = inb(dev->iobase + PCI9111_AI_TRIG_CTRL_REG);

 flags >>= 4;

 flags &= 0xc0;


 if (irq_0_source == irq_on_fifo_half_full)
  flags |= PCI9111_INT_CTRL_ISC0;

 if (irq_1_source == irq_on_external_trigger)
  flags |= PCI9111_INT_CTRL_ISC1;

 outb(flags, dev->iobase + PCI9111_INT_CTRL_REG);
}
