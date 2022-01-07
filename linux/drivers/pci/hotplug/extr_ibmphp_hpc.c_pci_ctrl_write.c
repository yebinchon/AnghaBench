
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct controller {scalar_t__ ctrl_dev; } ;


 scalar_t__ ENODEV ;
 scalar_t__ HPC_PCI_OFFSET ;
 int debug (char*) ;
 int pci_write_config_byte (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static u8 pci_ctrl_write(struct controller *ctrl, u8 offset, u8 data)
{
 u8 rc = -ENODEV;
 debug("inside pci_ctrl_write\n");
 if (ctrl->ctrl_dev) {
  pci_write_config_byte(ctrl->ctrl_dev, HPC_PCI_OFFSET + offset, data);
  rc = 0;
 }
 return rc;
}
