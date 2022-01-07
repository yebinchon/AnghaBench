
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int io_bidirection_pin_reg; } ;
struct comedi_device {struct ni_private* private; } ;


 int COMEDI_INPUT ;
 int COMEDI_OUTPUT ;
 int NI_PFI (int ) ;

__attribute__((used)) static int ni_get_pfi_direction(struct comedi_device *dev, int chan)
{
 struct ni_private *devpriv = dev->private;

 if (chan >= NI_PFI(0)) {

  chan -= NI_PFI(0);
 }
 return devpriv->io_bidirection_pin_reg & (1 << chan) ?
        COMEDI_OUTPUT : COMEDI_INPUT;
}
