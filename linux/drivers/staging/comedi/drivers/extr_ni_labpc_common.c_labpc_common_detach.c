
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int counter; } ;
struct comedi_device {struct labpc_private* private; } ;


 int kfree (int ) ;

void labpc_common_detach(struct comedi_device *dev)
{
 struct labpc_private *devpriv = dev->private;

 if (devpriv)
  kfree(devpriv->counter);
}
