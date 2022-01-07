
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ KE_RESET_REG (unsigned int) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void ke_counter_reset(struct comedi_device *dev)
{
 unsigned int chan;

 for (chan = 0; chan < 3; chan++)
  outb(0, dev->iobase + KE_RESET_REG(chan));
}
