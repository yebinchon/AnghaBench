
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 int APD_BIT ;
 scalar_t__ CONFIG_REG ;
 int DPD_BIT ;
 int a2150_free_dma (struct comedi_device*) ;
 int comedi_legacy_detach (struct comedi_device*) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void a2150_detach(struct comedi_device *dev)
{
 if (dev->iobase)
  outw(APD_BIT | DPD_BIT, dev->iobase + CONFIG_REG);
 a2150_free_dma(dev);
 comedi_legacy_detach(dev);
}
