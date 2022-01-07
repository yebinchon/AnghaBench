
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 unsigned int COMEDI_OUTPUT ;
 int NISTC_IO_BIDIR_PIN_REG ;
 int NI_PFI (int ) ;
 int ni_set_bits (struct comedi_device*,int ,int,unsigned int) ;

__attribute__((used)) static void ni_set_pfi_direction(struct comedi_device *dev, int chan,
     unsigned int direction)
{
 if (chan >= NI_PFI(0)) {

  chan -= NI_PFI(0);
 }
 direction = (direction == COMEDI_OUTPUT) ? 1u : 0u;
 ni_set_bits(dev, NISTC_IO_BIDIR_PIN_REG, 1 << chan, direction);
}
