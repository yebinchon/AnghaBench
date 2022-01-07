
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jr3_pci_dev_private {int timer; } ;
struct comedi_device {struct jr3_pci_dev_private* private; } ;


 int comedi_pci_detach (struct comedi_device*) ;
 int del_timer_sync (int *) ;

__attribute__((used)) static void jr3_pci_detach(struct comedi_device *dev)
{
 struct jr3_pci_dev_private *devpriv = dev->private;

 if (devpriv)
  del_timer_sync(&devpriv->timer);

 comedi_pci_detach(dev);
}
