
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ni_660x_private {int io_dir; } ;
struct comedi_device {struct ni_660x_private* private; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 unsigned int NI_PFI (int ) ;

__attribute__((used)) static unsigned int ni_660x_get_pfi_direction(struct comedi_device *dev,
           unsigned int chan)
{
 struct ni_660x_private *devpriv = dev->private;
 u64 bit;

 if (chan >= NI_PFI(0))

  chan -= NI_PFI(0);

 bit = 1ULL << chan;

 return (devpriv->io_dir & bit) ? COMEDI_OUTPUT : COMEDI_INPUT;
}
