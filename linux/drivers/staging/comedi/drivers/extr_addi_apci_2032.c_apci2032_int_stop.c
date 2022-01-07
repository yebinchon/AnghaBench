
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct apci2032_int_private* private; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct apci2032_int_private {int active; scalar_t__ enabled_isns; } ;


 scalar_t__ APCI2032_INT_CTRL_REG ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static void apci2032_int_stop(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 struct apci2032_int_private *subpriv = s->private;

 subpriv->active = 0;
 subpriv->enabled_isns = 0;
 outl(0x0, dev->iobase + APCI2032_INT_CTRL_REG);
}
