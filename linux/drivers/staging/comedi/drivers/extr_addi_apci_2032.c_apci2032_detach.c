
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {TYPE_1__* read_subdev; scalar_t__ iobase; } ;
struct TYPE_2__ {int private; } ;


 int apci2032_reset (struct comedi_device*) ;
 int comedi_pci_detach (struct comedi_device*) ;
 int kfree (int ) ;

__attribute__((used)) static void apci2032_detach(struct comedi_device *dev)
{
 if (dev->iobase)
  apci2032_reset(dev);
 comedi_pci_detach(dev);
 if (dev->read_subdev)
  kfree(dev->read_subdev->private);
}
