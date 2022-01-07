
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmda12_private {scalar_t__ simultaneous_xfer_mode; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int iobase; struct pcmda12_private* private; } ;


 int comedi_readback_insn_read (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;
 int inb (int ) ;

__attribute__((used)) static int pcmda12_ao_insn_read(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 struct pcmda12_private *devpriv = dev->private;





 if (devpriv->simultaneous_xfer_mode)
  inb(dev->iobase);

 return comedi_readback_insn_read(dev, s, insn, data);
}
