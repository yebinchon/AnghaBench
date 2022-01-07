
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ APCI3120_CTR0_REG ;
 int inb (scalar_t__) ;

__attribute__((used)) static void apci3120_clr_timer2_interrupt(struct comedi_device *dev)
{

 inb(dev->iobase + APCI3120_CTR0_REG);
}
