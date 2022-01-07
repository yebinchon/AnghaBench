
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ Firmware_Control_Register ;
 scalar_t__ Firmware_Mask_Register ;
 int pci_6534_reset_fpga (struct comedi_device*,int) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int pci_6534_reset_fpgas(struct comedi_device *dev)
{
 int ret;
 int i;

 writew(0x0, dev->mmio + Firmware_Control_Register);
 for (i = 0; i < 3; ++i) {
  ret = pci_6534_reset_fpga(dev, i);
  if (ret < 0)
   break;
 }
 writew(0x0, dev->mmio + Firmware_Mask_Register);
 return ret;
}
