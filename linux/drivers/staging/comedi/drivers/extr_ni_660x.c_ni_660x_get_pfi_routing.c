
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_660x_private {int* io_cfg; } ;
struct comedi_device {struct ni_660x_private* private; } ;


 unsigned int NI_PFI (int ) ;

__attribute__((used)) static int ni_660x_get_pfi_routing(struct comedi_device *dev, unsigned int chan)
{
 struct ni_660x_private *devpriv = dev->private;

 if (chan >= NI_PFI(0))

  chan -= NI_PFI(0);

 return devpriv->io_cfg[chan];
}
