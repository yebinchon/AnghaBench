
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ LAS0_CGL_WRITE ;
 scalar_t__ LAS0_CGT_CLEAR ;
 scalar_t__ LAS0_CGT_ENABLE ;
 scalar_t__ LAS0_CGT_WRITE ;
 int rtd_convert_chan_gain (struct comedi_device*,unsigned int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void rtd_load_channelgain_list(struct comedi_device *dev,
          unsigned int n_chan, unsigned int *list)
{
 if (n_chan > 1) {
  int ii;

  writel(0, dev->mmio + LAS0_CGT_CLEAR);
  writel(1, dev->mmio + LAS0_CGT_ENABLE);
  for (ii = 0; ii < n_chan; ii++) {
   writel(rtd_convert_chan_gain(dev, list[ii], ii),
          dev->mmio + LAS0_CGT_WRITE);
  }
 } else {
  writel(0, dev->mmio + LAS0_CGT_ENABLE);
  writel(rtd_convert_chan_gain(dev, list[0], 0),
         dev->mmio + LAS0_CGL_WRITE);
 }
}
