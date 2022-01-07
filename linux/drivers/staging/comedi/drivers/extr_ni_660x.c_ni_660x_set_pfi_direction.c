
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct ni_660x_private {unsigned long long io_dir; int * io_cfg; } ;
struct comedi_device {struct ni_660x_private* private; } ;


 unsigned int COMEDI_OUTPUT ;
 unsigned int NI_PFI (int ) ;
 int ni_660x_select_pfi_output (struct comedi_device*,unsigned int,int ) ;

__attribute__((used)) static void ni_660x_set_pfi_direction(struct comedi_device *dev,
          unsigned int chan,
          unsigned int direction)
{
 struct ni_660x_private *devpriv = dev->private;
 u64 bit;

 if (chan >= NI_PFI(0))

  chan -= NI_PFI(0);

 bit = 1ULL << chan;

 if (direction == COMEDI_OUTPUT) {
  devpriv->io_dir |= bit;

  ni_660x_select_pfi_output(dev, chan, devpriv->io_cfg[chan]);
 } else {
  devpriv->io_dir &= ~bit;

  ni_660x_select_pfi_output(dev, chan, 0);
 }
}
