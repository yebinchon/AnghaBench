
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iolen; scalar_t__ iobase; scalar_t__ irq; } ;


 int free_irq (scalar_t__,struct comedi_device*) ;
 int release_region (scalar_t__,scalar_t__) ;

void comedi_legacy_detach(struct comedi_device *dev)
{
 if (dev->irq) {
  free_irq(dev->irq, dev);
  dev->irq = 0;
 }
 if (dev->iobase && dev->iolen) {
  release_region(dev->iobase, dev->iolen);
  dev->iobase = 0;
  dev->iolen = 0;
 }
}
