
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; scalar_t__ mmio; } ;


 int outl (unsigned int,scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void ni_writel(struct comedi_device *dev, unsigned int data, int reg)
{
 if (dev->mmio)
  writel(data, dev->mmio + reg);
 else
  outl(data, dev->iobase + reg);
}
