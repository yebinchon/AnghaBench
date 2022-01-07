
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s526_private {unsigned int* gpct_config; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct s526_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 unsigned int GPCT_RESET_COUNTER_ON_INDEX ;
 unsigned int GPCT_X2 ;
 unsigned int GPCT_X4 ;



 unsigned int S526_GPCT_CTRL_CT_LOAD ;
 unsigned int S526_GPCT_CTRL_CT_RESET ;
 scalar_t__ S526_GPCT_CTRL_REG (unsigned int) ;
 unsigned int S526_GPCT_MODE_AUTOLOAD_IXRISE ;
 unsigned int S526_GPCT_MODE_AUTOLOAD_MASK ;
 unsigned int S526_GPCT_MODE_AUTOLOAD_NONE ;
 unsigned int S526_GPCT_MODE_CLK_SRC_QUADX1 ;
 unsigned int S526_GPCT_MODE_CLK_SRC_QUADX2 ;
 unsigned int S526_GPCT_MODE_CLK_SRC_QUADX4 ;
 unsigned int S526_GPCT_MODE_CTDIR_CTRL_QUAD ;
 unsigned int S526_GPCT_MODE_PR_SELECT_MASK ;
 unsigned int S526_GPCT_MODE_PR_SELECT_PR0 ;
 unsigned int S526_GPCT_MODE_PR_SELECT_PR1 ;
 scalar_t__ S526_GPCT_MODE_REG (unsigned int) ;
 int outw (unsigned int,scalar_t__) ;
 int s526_gpct_write (struct comedi_device*,unsigned int,unsigned int) ;

__attribute__((used)) static int s526_gpct_insn_config(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 struct s526_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int val;





 switch (data[0]) {
 case 129:






  devpriv->gpct_config[chan] = data[0];



  val = data[1] & 0xffff;
  outw(val, dev->iobase + S526_GPCT_MODE_REG(chan));


  if ((val & S526_GPCT_MODE_AUTOLOAD_MASK) ==
      S526_GPCT_MODE_AUTOLOAD_NONE) {

   outw(S526_GPCT_CTRL_CT_RESET,
        dev->iobase + S526_GPCT_CTRL_REG(chan));





  }
  break;

 case 128:







  devpriv->gpct_config[chan] = data[0];


  val = data[1] & 0xffff;

  val &= ~S526_GPCT_MODE_PR_SELECT_MASK;
  val |= S526_GPCT_MODE_PR_SELECT_PR0;
  outw(val, dev->iobase + S526_GPCT_MODE_REG(chan));


  s526_gpct_write(dev, chan, data[2]);


  val = data[1] & 0xffff;

  val &= ~S526_GPCT_MODE_PR_SELECT_MASK;
  val |= S526_GPCT_MODE_PR_SELECT_PR1;
  outw(val, dev->iobase + S526_GPCT_MODE_REG(chan));


  s526_gpct_write(dev, chan, data[3]);


  if (data[4]) {
   val = data[4] & 0xffff;
   outw(val, dev->iobase + S526_GPCT_CTRL_REG(chan));
  }
  break;

 case 130:







  devpriv->gpct_config[chan] = data[0];


  val = data[1] & 0xffff;

  val &= ~S526_GPCT_MODE_PR_SELECT_MASK;
  val |= S526_GPCT_MODE_PR_SELECT_PR0;
  outw(val, dev->iobase + S526_GPCT_MODE_REG(chan));


  s526_gpct_write(dev, chan, data[2]);


  val = data[1] & 0xffff;

  val &= ~S526_GPCT_MODE_PR_SELECT_MASK;
  val |= S526_GPCT_MODE_PR_SELECT_PR1;
  outw(val, dev->iobase + S526_GPCT_MODE_REG(chan));


  s526_gpct_write(dev, chan, data[3]);


  if (data[4]) {
   val = data[4] & 0xffff;
   outw(val, dev->iobase + S526_GPCT_CTRL_REG(chan));
  }
  break;

 default:
  return -EINVAL;
 }

 return insn->n;
}
