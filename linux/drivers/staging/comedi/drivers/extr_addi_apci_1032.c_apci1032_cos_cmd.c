
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; int class_dev; struct apci1032_private* private; } ;
struct apci1032_private {int ctrl; int mode2; int mode1; } ;


 scalar_t__ APCI1032_CTRL_REG ;
 scalar_t__ APCI1032_MODE1_REG ;
 scalar_t__ APCI1032_MODE2_REG ;
 int EINVAL ;
 int dev_warn (int ,char*) ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static int apci1032_cos_cmd(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct apci1032_private *devpriv = dev->private;

 if (!devpriv->ctrl) {
  dev_warn(dev->class_dev,
    "Interrupts disabled due to mode configuration!\n");
  return -EINVAL;
 }

 outl(devpriv->mode1, dev->iobase + APCI1032_MODE1_REG);
 outl(devpriv->mode2, dev->iobase + APCI1032_MODE2_REG);
 outl(devpriv->ctrl, dev->iobase + APCI1032_CTRL_REG);

 return 0;
}
