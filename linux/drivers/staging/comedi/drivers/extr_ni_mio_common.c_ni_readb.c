
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; scalar_t__ mmio; } ;


 unsigned int inb (scalar_t__) ;
 unsigned int readb (scalar_t__) ;

__attribute__((used)) static unsigned int ni_readb(struct comedi_device *dev, int reg)
{
 if (dev->mmio)
  return readb(dev->mmio + reg);

 return inb(dev->iobase + reg);
}
