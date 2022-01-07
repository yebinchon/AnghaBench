
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt2814_private {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int len_chanlist; int do_cmdtest; int do_cmd; int * range_table; int insn_read; int type; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; scalar_t__ irq; struct comedi_subdevice* subdevices; int board_name; scalar_t__ iobase; int class_dev; } ;
struct comedi_devconfig {scalar_t__* options; } ;


 int COMEDI_SUBD_AI ;
 scalar_t__ DT2814_CSR ;
 scalar_t__ DT2814_DATA ;
 int DT2814_ERR ;
 int EIO ;
 int ENOMEM ;
 int SDF_CMD_READ ;
 int SDF_GROUND ;
 int SDF_READABLE ;
 struct dt2814_private* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,scalar_t__,int) ;
 int dev_err (int ,char*) ;
 int dt2814_ai_cmd ;
 int dt2814_ai_cmdtest ;
 int dt2814_ai_insn_read ;
 int dt2814_interrupt ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int range_unknown ;
 int request_irq (scalar_t__,int ,int ,int ,struct comedi_device*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 struct dt2814_private *devpriv;
 struct comedi_subdevice *s;
 int ret;
 int i;

 ret = comedi_request_region(dev, it->options[0], 0x2);
 if (ret)
  return ret;

 outb(0, dev->iobase + DT2814_CSR);
 usleep_range(100, 200);
 if (inb(dev->iobase + DT2814_CSR) & DT2814_ERR) {
  dev_err(dev->class_dev, "reset error (fatal)\n");
  return -EIO;
 }
 i = inb(dev->iobase + DT2814_DATA);
 i = inb(dev->iobase + DT2814_DATA);

 if (it->options[1]) {
  ret = request_irq(it->options[1], dt2814_interrupt, 0,
      dev->board_name, dev);
  if (ret == 0)
   dev->irq = it->options[1];
 }

 ret = comedi_alloc_subdevices(dev, 1);
 if (ret)
  return ret;

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 s = &dev->subdevices[0];
 s->type = COMEDI_SUBD_AI;
 s->subdev_flags = SDF_READABLE | SDF_GROUND;
 s->n_chan = 16;
 s->insn_read = dt2814_ai_insn_read;
 s->maxdata = 0xfff;
 s->range_table = &range_unknown;
 if (dev->irq) {
  dev->read_subdev = s;
  s->subdev_flags |= SDF_CMD_READ;
  s->len_chanlist = 1;
  s->do_cmd = dt2814_ai_cmd;
  s->do_cmdtest = dt2814_ai_cmdtest;
 }

 return 0;
}
