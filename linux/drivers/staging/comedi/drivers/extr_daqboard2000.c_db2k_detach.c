
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db2k_private {scalar_t__ plx; } ;
struct comedi_device {struct db2k_private* private; } ;


 int comedi_pci_detach (struct comedi_device*) ;
 int iounmap (scalar_t__) ;

__attribute__((used)) static void db2k_detach(struct comedi_device *dev)
{
 struct db2k_private *devpriv = dev->private;

 if (devpriv && devpriv->plx)
  iounmap(devpriv->plx);
 comedi_pci_detach(dev);
}
