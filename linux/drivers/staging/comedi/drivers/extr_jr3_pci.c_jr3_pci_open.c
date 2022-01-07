
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jr3_pci_subdev_private {int serial_no; } ;
struct comedi_subdevice {int index; struct jr3_pci_subdev_private* private; } ;
struct comedi_device {int n_subdevices; int class_dev; struct comedi_subdevice* subdevices; } ;


 int dev_dbg (int ,char*,int ,int ) ;

__attribute__((used)) static int jr3_pci_open(struct comedi_device *dev)
{
 struct jr3_pci_subdev_private *spriv;
 struct comedi_subdevice *s;
 int i;

 for (i = 0; i < dev->n_subdevices; i++) {
  s = &dev->subdevices[i];
  spriv = s->private;
  dev_dbg(dev->class_dev, "serial[%d]: %d\n", s->index,
   spriv->serial_no);
 }
 return 0;
}
