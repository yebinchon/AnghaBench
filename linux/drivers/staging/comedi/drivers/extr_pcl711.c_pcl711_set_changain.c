
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int n_chan; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int AREF_DIFF ;
 unsigned int CR_AREF (unsigned int) ;
 unsigned int CR_CHAN (unsigned int) ;
 unsigned int CR_RANGE (unsigned int) ;
 unsigned int PCL711_AI_GAIN (unsigned int) ;
 scalar_t__ PCL711_AI_GAIN_REG ;
 unsigned int PCL711_MUX_CHAN (unsigned int) ;
 unsigned int PCL711_MUX_CS0 ;
 unsigned int PCL711_MUX_CS1 ;
 unsigned int PCL711_MUX_DIFF ;
 scalar_t__ PCL711_MUX_REG ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static void pcl711_set_changain(struct comedi_device *dev,
    struct comedi_subdevice *s,
    unsigned int chanspec)
{
 unsigned int chan = CR_CHAN(chanspec);
 unsigned int range = CR_RANGE(chanspec);
 unsigned int aref = CR_AREF(chanspec);
 unsigned int mux = 0;

 outb(PCL711_AI_GAIN(range), dev->iobase + PCL711_AI_GAIN_REG);

 if (s->n_chan > 8) {

  if (aref == AREF_DIFF) {
   chan &= 0x7;
   mux |= PCL711_MUX_DIFF;
  } else {
   if (chan < 8)
    mux |= PCL711_MUX_CS0;
   else
    mux |= PCL711_MUX_CS1;
  }
 }
 outb(mux | PCL711_MUX_CHAN(chan), dev->iobase + PCL711_MUX_REG);
}
