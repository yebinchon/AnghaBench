
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;


 scalar_t__ PCMUIO_INT_PENDING_REG ;
 int PCMUIO_PAGE_INT_ID ;
 int inb (scalar_t__) ;
 unsigned long pcmuio_asic_iobase (struct comedi_device*,int) ;
 int pcmuio_handle_intr_subdev (struct comedi_device*,struct comedi_subdevice*,unsigned int) ;
 unsigned int pcmuio_read (struct comedi_device*,int,int ,int ) ;
 int pcmuio_write (struct comedi_device*,int ,int,int ,int ) ;

__attribute__((used)) static int pcmuio_handle_asic_interrupt(struct comedi_device *dev, int asic)
{

 struct comedi_subdevice *s = &dev->subdevices[asic * 2];
 unsigned long iobase = pcmuio_asic_iobase(dev, asic);
 unsigned int val;


 val = inb(iobase + PCMUIO_INT_PENDING_REG) & 0x07;
 if (!val)
  return 0;


 val = pcmuio_read(dev, asic, PCMUIO_PAGE_INT_ID, 0);
 pcmuio_write(dev, 0, asic, PCMUIO_PAGE_INT_ID, 0);


 pcmuio_handle_intr_subdev(dev, s, val);

 return 1;
}
