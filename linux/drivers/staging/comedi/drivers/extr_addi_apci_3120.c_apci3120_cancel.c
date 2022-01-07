
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct apci3120_private* private; } ;
struct apci3120_private {scalar_t__ cur_dmabuf; scalar_t__ mode; scalar_t__ ctrl; scalar_t__ amcc; scalar_t__ addon; } ;


 int AMCC_OP_REG_AGCSTS ;
 scalar_t__ AMCC_OP_REG_MCSR ;
 scalar_t__ APCI3120_CTRL_REG ;
 scalar_t__ APCI3120_MODE_REG ;
 scalar_t__ APCI3120_STATUS_REG ;
 int apci3120_addon_write (struct comedi_device*,int ,int ) ;
 int inw (scalar_t__) ;
 int outb (scalar_t__,scalar_t__) ;
 int outl (int ,scalar_t__) ;
 int outw (scalar_t__,scalar_t__) ;

__attribute__((used)) static int apci3120_cancel(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 struct apci3120_private *devpriv = dev->private;


 outw(0, devpriv->addon + 4);


 apci3120_addon_write(dev, 0, AMCC_OP_REG_AGCSTS);


 outl(0, devpriv->amcc + AMCC_OP_REG_MCSR);


 devpriv->ctrl = 0;
 outw(devpriv->ctrl, dev->iobase + APCI3120_CTRL_REG);


 devpriv->mode = 0;
 outb(devpriv->mode, dev->iobase + APCI3120_MODE_REG);

 inw(dev->iobase + APCI3120_STATUS_REG);
 devpriv->cur_dmabuf = 0;

 return 0;
}
