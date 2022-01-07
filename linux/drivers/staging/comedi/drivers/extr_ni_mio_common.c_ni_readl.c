
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; scalar_t__ mmio; } ;


 unsigned int inl (scalar_t__) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static unsigned int ni_readl(struct comedi_device *dev, int reg)
{
 if (dev->mmio)
  return readl(dev->mmio + reg);

 return inl(dev->iobase + reg);
}
