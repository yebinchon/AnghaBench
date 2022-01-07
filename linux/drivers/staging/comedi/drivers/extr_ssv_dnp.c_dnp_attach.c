
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int insn_config; int insn_bits; int * range_table; int type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct comedi_devconfig {int dummy; } ;


 int COMEDI_SUBD_DIO ;
 int CSCDR ;
 int CSCIR ;
 int PAMR ;
 int PBMR ;
 int PCMR ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int dnp_dio_insn_bits ;
 int dnp_dio_insn_config ;
 int inb (int ) ;
 int outb (int,int ) ;
 int range_digital ;

__attribute__((used)) static int dnp_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 struct comedi_subdevice *s;
 int ret;







 ret = comedi_alloc_subdevices(dev, 1);
 if (ret)
  return ret;

 s = &dev->subdevices[0];

 s->type = COMEDI_SUBD_DIO;
 s->subdev_flags = SDF_READABLE | SDF_WRITABLE;
 s->n_chan = 20;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = dnp_dio_insn_bits;
 s->insn_config = dnp_dio_insn_config;


 outb(PAMR, CSCIR);
 outb(0x00, CSCDR);
 outb(PBMR, CSCIR);
 outb(0x00, CSCDR);
 outb(PCMR, CSCIR);
 outb((inb(CSCDR) & 0xAA), CSCDR);

 return 0;
}
