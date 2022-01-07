
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt282x_private {scalar_t__ ad_2scomp; } ;
struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_device {int class_dev; struct dt282x_private* private; } ;


 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static void dt282x_munge(struct comedi_device *dev,
    struct comedi_subdevice *s,
    unsigned short *buf,
    unsigned int nbytes)
{
 struct dt282x_private *devpriv = dev->private;
 unsigned int val;
 int i;

 if (nbytes % 2)
  dev_err(dev->class_dev,
   "bug! odd number of bytes from dma xfer\n");

 for (i = 0; i < nbytes / 2; i++) {
  val = buf[i];
  val &= s->maxdata;
  if (devpriv->ad_2scomp)
   val = comedi_offset_munge(s, val);

  buf[i] = val;
 }
}
