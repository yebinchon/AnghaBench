
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 unsigned int readb (scalar_t__) ;

__attribute__((used)) static unsigned int labpc_readb(struct comedi_device *dev, unsigned long reg)
{
 return readb(dev->mmio + reg);
}
