
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int counter_dev; } ;
struct comedi_device {struct ni_private* private; } ;


 int ni_gpct_device_destroy (int ) ;

__attribute__((used)) static void mio_common_detach(struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;

 if (devpriv)
  ni_gpct_device_destroy(devpriv->counter_dev);
}
