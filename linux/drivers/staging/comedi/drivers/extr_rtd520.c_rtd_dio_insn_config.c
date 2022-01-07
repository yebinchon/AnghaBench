
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ LAS0_DIO0_CTRL ;
 scalar_t__ LAS0_DIO_STATUS ;
 int comedi_dio_insn_config (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*,int ) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int rtd_dio_insn_config(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 int ret;

 ret = comedi_dio_insn_config(dev, s, insn, data, 0);
 if (ret)
  return ret;




 writew(0x01, dev->mmio + LAS0_DIO_STATUS);
 writew(s->io_bits & 0xff, dev->mmio + LAS0_DIO0_CTRL);


 writew(0x00, dev->mmio + LAS0_DIO_STATUS);





 return insn->n;
}
