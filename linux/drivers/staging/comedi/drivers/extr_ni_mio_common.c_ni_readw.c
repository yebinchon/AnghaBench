
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; scalar_t__ mmio; } ;


 unsigned int inw (scalar_t__) ;
 unsigned int readw (scalar_t__) ;

__attribute__((used)) static unsigned int ni_readw(struct comedi_device *dev, int reg)
{
 if (dev->mmio)
  return readw(dev->mmio + reg);

 return inw(dev->iobase + reg);
}
