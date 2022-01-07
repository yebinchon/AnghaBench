
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci9111_private_data {int lcr_io_base; } ;
struct comedi_device {scalar_t__ iobase; struct pci9111_private_data* private; } ;


 scalar_t__ PCI9111_AI_TRIG_CTRL_REG ;
 int outb (int ,scalar_t__) ;
 int plx9050_interrupt_control (int ,int,int,int,int,int) ;

__attribute__((used)) static int pci9111_reset(struct comedi_device *dev)
{
 struct pci9111_private_data *dev_private = dev->private;


 plx9050_interrupt_control(dev_private->lcr_io_base, 1, 1, 1,
      1, 0);


 outb(0, dev->iobase + PCI9111_AI_TRIG_CTRL_REG);

 return 0;
}
