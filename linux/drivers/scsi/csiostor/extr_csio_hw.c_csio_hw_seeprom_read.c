
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int vpd_cap_addr; } ;
struct TYPE_4__ {TYPE_1__ pci; } ;
struct csio_hw {int pdev; TYPE_2__ params; } ;
typedef int __le32 ;


 int EEPROMVSIZE ;
 int EEPROM_MAX_RD_POLL ;
 int EINVAL ;
 int PCI_VPD_ADDR ;
 int PCI_VPD_ADDR_F ;
 int PCI_VPD_DATA ;
 int csio_err (struct csio_hw*,char*,int) ;
 int le32_to_cpu (int ) ;
 int pci_read_config_dword (int ,int,int*) ;
 int pci_read_config_word (int ,int,int*) ;
 int pci_write_config_word (int ,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int
csio_hw_seeprom_read(struct csio_hw *hw, uint32_t addr, uint32_t *data)
{
 uint16_t val = 0;
 int attempts = EEPROM_MAX_RD_POLL;
 uint32_t base = hw->params.pci.vpd_cap_addr;

 if (addr >= EEPROMVSIZE || (addr & 3))
  return -EINVAL;

 pci_write_config_word(hw->pdev, base + PCI_VPD_ADDR, (uint16_t)addr);

 do {
  udelay(10);
  pci_read_config_word(hw->pdev, base + PCI_VPD_ADDR, &val);
 } while (!(val & PCI_VPD_ADDR_F) && --attempts);

 if (!(val & PCI_VPD_ADDR_F)) {
  csio_err(hw, "reading EEPROM address 0x%x failed\n", addr);
  return -EINVAL;
 }

 pci_read_config_dword(hw->pdev, base + PCI_VPD_DATA, data);
 *data = le32_to_cpu(*(__le32 *)data);

 return 0;
}
