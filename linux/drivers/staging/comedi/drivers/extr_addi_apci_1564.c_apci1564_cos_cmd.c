
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; int class_dev; struct apci1564_private* private; } ;
struct apci1564_private {scalar_t__ ctrl; scalar_t__ mode2; scalar_t__ mode1; } ;


 scalar_t__ APCI1564_DI_INT_MODE1_REG ;
 scalar_t__ APCI1564_DI_INT_MODE2_REG ;
 scalar_t__ APCI1564_DI_IRQ_REG ;
 int EINVAL ;
 int dev_warn (int ,char*) ;
 int outl (scalar_t__,scalar_t__) ;

__attribute__((used)) static int apci1564_cos_cmd(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct apci1564_private *devpriv = dev->private;

 if (!devpriv->ctrl && !(devpriv->mode1 || devpriv->mode2)) {
  dev_warn(dev->class_dev,
    "Interrupts disabled due to mode configuration!\n");
  return -EINVAL;
 }

 outl(devpriv->mode1, dev->iobase + APCI1564_DI_INT_MODE1_REG);
 outl(devpriv->mode2, dev->iobase + APCI1564_DI_INT_MODE2_REG);
 outl(devpriv->ctrl, dev->iobase + APCI1564_DI_IRQ_REG);

 return 0;
}
