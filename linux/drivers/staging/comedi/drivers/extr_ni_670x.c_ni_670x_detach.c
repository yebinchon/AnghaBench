
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int range_table_list; } ;
struct comedi_device {struct comedi_subdevice* subdevices; scalar_t__ n_subdevices; } ;


 int comedi_pci_detach (struct comedi_device*) ;
 int kfree (int ) ;

__attribute__((used)) static void ni_670x_detach(struct comedi_device *dev)
{
 struct comedi_subdevice *s;

 comedi_pci_detach(dev);
 if (dev->n_subdevices) {
  s = &dev->subdevices[0];
  if (s)
   kfree(s->range_table_list);
 }
}
