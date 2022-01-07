
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int clock_and_fout; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct ni_private* private; } ;


 int EINVAL ;


 int NISTC_CLK_FOUT_REG ;
 int NISTC_CLK_FOUT_TIMEBASE_SEL ;


 int TIMEBASE_1_NS ;
 unsigned int TIMEBASE_2_NS ;
 int ni_stc_writew (struct comedi_device*,int,int ) ;

__attribute__((used)) static int ni_freq_out_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 struct ni_private *devpriv = dev->private;

 switch (data[0]) {
 case 130:
  switch (data[1]) {
  case 129:
   devpriv->clock_and_fout &= ~NISTC_CLK_FOUT_TIMEBASE_SEL;
   break;
  case 128:
   devpriv->clock_and_fout |= NISTC_CLK_FOUT_TIMEBASE_SEL;
   break;
  default:
   return -EINVAL;
  }
  ni_stc_writew(dev, devpriv->clock_and_fout, NISTC_CLK_FOUT_REG);
  break;
 case 131:
  if (devpriv->clock_and_fout & NISTC_CLK_FOUT_TIMEBASE_SEL) {
   data[1] = 128;
   data[2] = TIMEBASE_2_NS;
  } else {
   data[1] = 129;
   data[2] = TIMEBASE_1_NS * 2;
  }
  break;
 default:
  return -EINVAL;
 }
 return insn->n;
}
