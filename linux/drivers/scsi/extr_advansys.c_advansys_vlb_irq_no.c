
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PortAddr ;


 unsigned short AscGetChipCfgLsw (int ) ;

__attribute__((used)) static unsigned int advansys_vlb_irq_no(PortAddr iop_base)
{
 unsigned short cfg_lsw = AscGetChipCfgLsw(iop_base);
 unsigned int chip_irq = ((cfg_lsw >> 2) & 0x07) + 9;
 if ((chip_irq < 10) || (chip_irq == 13) || (chip_irq > 15))
  return 0;
 return chip_irq;
}
