
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct apci3120_private* private; } ;
struct apci3120_private {int ctrl; int mode; } ;


 unsigned int APCI3120_CHANLIST_GAIN (unsigned int) ;
 unsigned int APCI3120_CHANLIST_INDEX (int) ;
 unsigned int APCI3120_CHANLIST_MUX (unsigned int) ;
 scalar_t__ APCI3120_CHANLIST_REG ;
 unsigned int APCI3120_CHANLIST_UNIPOLAR ;
 int APCI3120_CTRL_PA (int ) ;
 int APCI3120_CTRL_PR (int) ;
 scalar_t__ APCI3120_CTRL_REG ;
 int APCI3120_MODE_SCAN_ENA ;
 scalar_t__ APCI3120_TIMER_MODE_REG ;
 unsigned int CR_CHAN (unsigned int) ;
 unsigned int CR_RANGE (unsigned int) ;
 scalar_t__ comedi_range_is_unipolar (struct comedi_subdevice*,unsigned int) ;
 int inw (scalar_t__) ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static void apci3120_set_chanlist(struct comedi_device *dev,
      struct comedi_subdevice *s,
      int n_chan, unsigned int *chanlist)
{
 struct apci3120_private *devpriv = dev->private;
 int i;


 for (i = 0; i < n_chan; i++) {
  unsigned int chan = CR_CHAN(chanlist[i]);
  unsigned int range = CR_RANGE(chanlist[i]);
  unsigned int val;

  val = APCI3120_CHANLIST_MUX(chan) |
        APCI3120_CHANLIST_GAIN(range) |
        APCI3120_CHANLIST_INDEX(i);

  if (comedi_range_is_unipolar(s, range))
   val |= APCI3120_CHANLIST_UNIPOLAR;

  outw(val, dev->iobase + APCI3120_CHANLIST_REG);
 }


 inw(dev->iobase + APCI3120_TIMER_MODE_REG);


 devpriv->ctrl = APCI3120_CTRL_PR(n_chan - 1) | APCI3120_CTRL_PA(0);
 outw(devpriv->ctrl, dev->iobase + APCI3120_CTRL_REG);


 if (n_chan > 1)
  devpriv->mode |= APCI3120_MODE_SCAN_ENA;
}
