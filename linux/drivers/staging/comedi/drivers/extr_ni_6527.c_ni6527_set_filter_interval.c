
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni6527_private {unsigned int filter_interval; } ;
struct comedi_device {scalar_t__ mmio; struct ni6527_private* private; } ;


 unsigned int NI6527_CLR_INTERVAL ;
 scalar_t__ NI6527_CLR_REG ;
 scalar_t__ NI6527_FILT_INTERVAL_REG (int) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static void ni6527_set_filter_interval(struct comedi_device *dev,
           unsigned int val)
{
 struct ni6527_private *devpriv = dev->private;

 if (val != devpriv->filter_interval) {
  writeb(val & 0xff, dev->mmio + NI6527_FILT_INTERVAL_REG(0));
  writeb((val >> 8) & 0xff,
         dev->mmio + NI6527_FILT_INTERVAL_REG(1));
  writeb((val >> 16) & 0x0f,
         dev->mmio + NI6527_FILT_INTERVAL_REG(2));

  writeb(NI6527_CLR_INTERVAL, dev->mmio + NI6527_CLR_REG);

  devpriv->filter_interval = val;
 }
}
