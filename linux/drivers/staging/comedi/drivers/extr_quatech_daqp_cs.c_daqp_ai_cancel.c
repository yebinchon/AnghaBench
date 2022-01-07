
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct daqp_private {scalar_t__ stop; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct daqp_private* private; } ;


 scalar_t__ DAQP_CMD_REG ;
 int DAQP_CMD_STOP ;
 scalar_t__ DAQP_CTRL_REG ;
 scalar_t__ DAQP_STATUS_REG ;
 int EIO ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static int daqp_ai_cancel(struct comedi_device *dev,
     struct comedi_subdevice *s)
{
 struct daqp_private *devpriv = dev->private;

 if (devpriv->stop)
  return -EIO;





 outb(DAQP_CMD_STOP, dev->iobase + DAQP_CMD_REG);
 outb(0, dev->iobase + DAQP_CTRL_REG);
 inb(dev->iobase + DAQP_STATUS_REG);

 return 0;
}
