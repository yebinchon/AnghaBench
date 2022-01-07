
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PortAddr ;


 unsigned short ASC_BIOS_BANK_SIZE ;
 unsigned short ASC_BIOS_MIN_ADDR ;
 unsigned short ASC_IS_EISA ;
 unsigned short ASC_IS_ISAPNP ;
 unsigned short ASC_IS_PCI ;
 unsigned short AscGetChipCfgLsw (int ) ;
 unsigned short AscGetEisaChipCfg (int ) ;

__attribute__((used)) static unsigned short AscGetChipBiosAddress(PortAddr iop_base,
         unsigned short bus_type)
{
 unsigned short cfg_lsw;
 unsigned short bios_addr;






 if (bus_type & ASC_IS_PCI)
  return 0;

 if ((bus_type & ASC_IS_EISA) != 0) {
  cfg_lsw = AscGetEisaChipCfg(iop_base);
  cfg_lsw &= 0x000F;
  bios_addr = ASC_BIOS_MIN_ADDR + cfg_lsw * ASC_BIOS_BANK_SIZE;
  return bios_addr;
 }

 cfg_lsw = AscGetChipCfgLsw(iop_base);




 if (bus_type == ASC_IS_ISAPNP)
  cfg_lsw &= 0x7FFF;
 bios_addr = ASC_BIOS_MIN_ADDR + (cfg_lsw >> 12) * ASC_BIOS_BANK_SIZE;
 return bios_addr;
}
