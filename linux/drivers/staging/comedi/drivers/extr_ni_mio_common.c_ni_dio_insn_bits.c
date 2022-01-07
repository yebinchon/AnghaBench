
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int dio_output; scalar_t__ serial_interval_ns; } ;
struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct ni_private* private; } ;


 int EBUSY ;
 int NISTC_DIO_IN_REG ;
 int NISTC_DIO_OUT_PARALLEL (int ) ;
 int NISTC_DIO_OUT_PARALLEL_MASK ;
 int NISTC_DIO_OUT_REG ;
 unsigned int NISTC_DIO_SDIN ;
 unsigned int NISTC_DIO_SDOUT ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 unsigned int ni_stc_readw (struct comedi_device*,int ) ;
 int ni_stc_writew (struct comedi_device*,int ,int ) ;

__attribute__((used)) static int ni_dio_insn_bits(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 struct ni_private *devpriv = dev->private;


 if ((data[0] & (NISTC_DIO_SDIN | NISTC_DIO_SDOUT)) &&
     devpriv->serial_interval_ns)
  return -EBUSY;

 if (comedi_dio_update_state(s, data)) {
  devpriv->dio_output &= ~NISTC_DIO_OUT_PARALLEL_MASK;
  devpriv->dio_output |= NISTC_DIO_OUT_PARALLEL(s->state);
  ni_stc_writew(dev, devpriv->dio_output, NISTC_DIO_OUT_REG);
 }

 data[1] = ni_stc_readw(dev, NISTC_DIO_IN_REG);

 return insn->n;
}
