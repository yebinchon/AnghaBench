
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 unsigned int inb (scalar_t__) ;

__attribute__((used)) static unsigned int labpc_inb(struct comedi_device *dev, unsigned long reg)
{
 return inb(dev->iobase + reg);
}
