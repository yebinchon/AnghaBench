
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int len_chanlist; int cancel; int do_cmd; int do_cmdtest; int insn_bits; int * range_table; int type; } ;
struct comedi_device {unsigned long iobase; unsigned int irq; int board_name; struct comedi_subdevice* read_subdev; struct comedi_subdevice* subdevices; } ;


 int COMEDI_SUBD_DI ;
 int COMEDI_SUBD_UNUSED ;
 int SDF_CMD_READ ;
 int SDF_READABLE ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int pc236_interrupt ;
 int pc236_intr_cancel ;
 int pc236_intr_cmd ;
 int pc236_intr_cmdtest ;
 int pc236_intr_insn ;
 int pc236_intr_update (struct comedi_device*,int) ;
 int range_digital ;
 scalar_t__ request_irq (unsigned int,int ,unsigned long,int ,struct comedi_device*) ;
 int subdev_8255_init (struct comedi_device*,struct comedi_subdevice*,int *,int) ;

int amplc_pc236_common_attach(struct comedi_device *dev, unsigned long iobase,
         unsigned int irq, unsigned long req_irq_flags)
{
 struct comedi_subdevice *s;
 int ret;

 dev->iobase = iobase;

 ret = comedi_alloc_subdevices(dev, 2);
 if (ret)
  return ret;

 s = &dev->subdevices[0];

 ret = subdev_8255_init(dev, s, ((void*)0), 0x00);
 if (ret)
  return ret;

 s = &dev->subdevices[1];
 dev->read_subdev = s;
 s->type = COMEDI_SUBD_UNUSED;
 pc236_intr_update(dev, 0);
 if (irq) {
  if (request_irq(irq, pc236_interrupt, req_irq_flags,
    dev->board_name, dev) >= 0) {
   dev->irq = irq;
   s->type = COMEDI_SUBD_DI;
   s->subdev_flags = SDF_READABLE | SDF_CMD_READ;
   s->n_chan = 1;
   s->maxdata = 1;
   s->range_table = &range_digital;
   s->insn_bits = pc236_intr_insn;
   s->len_chanlist = 1;
   s->do_cmdtest = pc236_intr_cmdtest;
   s->do_cmd = pc236_intr_cmd;
   s->cancel = pc236_intr_cancel;
  }
 }

 return 0;
}
