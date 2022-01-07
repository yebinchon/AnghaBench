
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das16m1_private {int intr_ctrl; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct das16m1_private* private; } ;


 int DAS16M1_INTR_CTRL_INTE ;
 int DAS16M1_INTR_CTRL_PACER_MASK ;
 scalar_t__ DAS16M1_INTR_CTRL_REG ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int das16m1_ai_cancel(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 struct das16m1_private *devpriv = dev->private;


 devpriv->intr_ctrl &= ~(DAS16M1_INTR_CTRL_INTE |
    DAS16M1_INTR_CTRL_PACER_MASK);
 outb(devpriv->intr_ctrl, dev->iobase + DAS16M1_INTR_CTRL_REG);

 return 0;
}
