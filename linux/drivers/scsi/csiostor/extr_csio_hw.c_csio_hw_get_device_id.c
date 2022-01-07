
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vendor_id; int device_id; } ;
struct TYPE_4__ {TYPE_1__ pci; } ;
struct csio_hw {int chip_id; TYPE_2__ params; int pdev; } ;


 int CSIO_HW_CHIP_MASK ;
 int PCI_DEVICE_ID ;
 int PCI_VENDOR_ID ;
 int csio_dev_id_cached (struct csio_hw*) ;
 scalar_t__ csio_is_dev_id_cached (struct csio_hw*) ;
 int pci_read_config_word (int ,int ,int*) ;

__attribute__((used)) static void
csio_hw_get_device_id(struct csio_hw *hw)
{

 if (csio_is_dev_id_cached(hw))
  return;


 pci_read_config_word(hw->pdev, PCI_VENDOR_ID,
        &hw->params.pci.vendor_id);
 pci_read_config_word(hw->pdev, PCI_DEVICE_ID,
        &hw->params.pci.device_id);

 csio_dev_id_cached(hw);
 hw->chip_id = (hw->params.pci.device_id & CSIO_HW_CHIP_MASK);

}
