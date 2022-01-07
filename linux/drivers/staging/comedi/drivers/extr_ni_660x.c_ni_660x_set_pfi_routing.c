
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_660x_private {unsigned int* io_cfg; } ;
struct comedi_device {struct ni_660x_private* private; } ;


 scalar_t__ COMEDI_OUTPUT ;
 int EINVAL ;


 unsigned int NI_PFI (int ) ;
 scalar_t__ ni_660x_get_pfi_direction (struct comedi_device*,unsigned int) ;
 int ni_660x_select_pfi_output (struct comedi_device*,unsigned int,unsigned int) ;

__attribute__((used)) static int ni_660x_set_pfi_routing(struct comedi_device *dev,
       unsigned int chan, unsigned int source)
{
 struct ni_660x_private *devpriv = dev->private;

 if (chan >= NI_PFI(0))

  chan -= NI_PFI(0);

 switch (source) {
 case 129:
  if (chan < 8)
   return -EINVAL;
  break;
 case 128:
  if (chan > 31)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 devpriv->io_cfg[chan] = source;
 if (ni_660x_get_pfi_direction(dev, chan) == COMEDI_OUTPUT)
  ni_660x_select_pfi_output(dev, chan, devpriv->io_cfg[chan]);
 return 0;
}
