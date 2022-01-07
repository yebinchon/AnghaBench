
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DAS6402_CTRL_REG ;
 int DAS6402_CTRL_SOFT_TRIG ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static int das6402_ai_cancel(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 outb(DAS6402_CTRL_SOFT_TRIG, dev->iobase + DAS6402_CTRL_REG);

 return 0;
}
