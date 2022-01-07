
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct pci_dev {int dummy; } ;
struct hpx_type3 {int device_type; int function_type; int config_space_location; int match_mask_and; int match_value; int reg_mask_and; int reg_mask_or; scalar_t__ reg_offset; scalar_t__ match_offset; int pci_exp_cap_ver; int pci_exp_cap_id; } ;







 int PCI_EXT_CAP_VER (int) ;
 int hpx3_cap_ver_matches (int ,int ) ;
 int hpx3_device_type (struct pci_dev*) ;
 int hpx3_function_type (struct pci_dev*) ;
 int pci_dbg (struct pci_dev*,char*,scalar_t__,int,int) ;
 scalar_t__ pci_find_capability (struct pci_dev*,int ) ;
 scalar_t__ pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_warn (struct pci_dev*,char*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;

__attribute__((used)) static void program_hpx_type3_register(struct pci_dev *dev,
           const struct hpx_type3 *reg)
{
 u32 match_reg, write_reg, header, orig_value;
 u16 pos;

 if (!(hpx3_device_type(dev) & reg->device_type))
  return;

 if (!(hpx3_function_type(dev) & reg->function_type))
  return;

 switch (reg->config_space_location) {
 case 131:
  pos = 0;
  break;
 case 130:
  pos = pci_find_capability(dev, reg->pci_exp_cap_id);
  if (pos == 0)
   return;

  break;
 case 129:
  pos = pci_find_ext_capability(dev, reg->pci_exp_cap_id);
  if (pos == 0)
   return;

  pci_read_config_dword(dev, pos, &header);
  if (!hpx3_cap_ver_matches(PCI_EXT_CAP_VER(header),
       reg->pci_exp_cap_ver))
   return;

  break;
 case 128:
 case 132:
 default:
  pci_warn(dev, "Encountered _HPX type 3 with unsupported config space location");
  return;
 }

 pci_read_config_dword(dev, pos + reg->match_offset, &match_reg);

 if ((match_reg & reg->match_mask_and) != reg->match_value)
  return;

 pci_read_config_dword(dev, pos + reg->reg_offset, &write_reg);
 orig_value = write_reg;
 write_reg &= reg->reg_mask_and;
 write_reg |= reg->reg_mask_or;

 if (orig_value == write_reg)
  return;

 pci_write_config_dword(dev, pos + reg->reg_offset, write_reg);

 pci_dbg(dev, "Applied _HPX3 at [0x%x]: 0x%08x -> 0x%08x",
  pos, orig_value, write_reg);
}
