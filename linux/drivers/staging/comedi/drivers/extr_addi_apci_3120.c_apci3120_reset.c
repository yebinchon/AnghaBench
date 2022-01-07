
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ APCI3120_CTRL_REG ;
 scalar_t__ APCI3120_MODE_REG ;
 scalar_t__ APCI3120_STATUS_REG ;
 int inw (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static void apci3120_reset(struct comedi_device *dev)
{

 outb(0, dev->iobase + APCI3120_MODE_REG);


 outw(0, dev->iobase + APCI3120_CTRL_REG);


 inw(dev->iobase + APCI3120_STATUS_REG);
}
