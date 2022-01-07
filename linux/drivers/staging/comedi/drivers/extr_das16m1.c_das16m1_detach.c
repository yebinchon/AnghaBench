
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das16m1_private {int counter; scalar_t__ extra_iobase; } ;
struct comedi_device {struct das16m1_private* private; } ;


 int DAS16M1_SIZE2 ;
 int comedi_legacy_detach (struct comedi_device*) ;
 int kfree (int ) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static void das16m1_detach(struct comedi_device *dev)
{
 struct das16m1_private *devpriv = dev->private;

 if (devpriv) {
  if (devpriv->extra_iobase)
   release_region(devpriv->extra_iobase, DAS16M1_SIZE2);
  kfree(devpriv->counter);
 }
 comedi_legacy_detach(dev);
}
