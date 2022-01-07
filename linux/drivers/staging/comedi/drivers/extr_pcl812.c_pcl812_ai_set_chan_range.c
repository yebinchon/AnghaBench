
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl812_private {unsigned int last_ai_chanspec; unsigned int range_correction; int max_812_ai_mode0_rangewait; scalar_t__ use_diff; scalar_t__ use_mpc508; } ;
struct comedi_device {scalar_t__ iobase; struct pcl812_private* private; } ;


 unsigned int CR_CHAN (unsigned int) ;
 unsigned int CR_RANGE (unsigned int) ;
 unsigned int PCL812_MUX_CHAN (unsigned int) ;
 unsigned int PCL812_MUX_CS0 ;
 unsigned int PCL812_MUX_CS1 ;
 scalar_t__ PCL812_MUX_REG ;
 scalar_t__ PCL812_RANGE_REG ;
 int outb (unsigned int,scalar_t__) ;
 int udelay (int ) ;

__attribute__((used)) static void pcl812_ai_set_chan_range(struct comedi_device *dev,
         unsigned int chanspec, char wait)
{
 struct pcl812_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(chanspec);
 unsigned int range = CR_RANGE(chanspec);
 unsigned int mux = 0;

 if (chanspec == devpriv->last_ai_chanspec)
  return;

 devpriv->last_ai_chanspec = chanspec;

 if (devpriv->use_mpc508) {
  if (devpriv->use_diff) {
   mux |= PCL812_MUX_CS0 | PCL812_MUX_CS1;
  } else {
   if (chan < 8)
    mux |= PCL812_MUX_CS0;
   else
    mux |= PCL812_MUX_CS1;
  }
 }

 outb(mux | PCL812_MUX_CHAN(chan), dev->iobase + PCL812_MUX_REG);
 outb(range + devpriv->range_correction, dev->iobase + PCL812_RANGE_REG);

 if (wait)




  udelay(devpriv->max_812_ai_mode0_rangewait);
}
