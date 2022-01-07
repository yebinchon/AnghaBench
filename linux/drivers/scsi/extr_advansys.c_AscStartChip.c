
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PortAddr ;


 int AscGetChipStatus (int ) ;
 int AscSetChipControl (int ,int ) ;
 int CSW_HALTED ;

__attribute__((used)) static int AscStartChip(PortAddr iop_base)
{
 AscSetChipControl(iop_base, 0);
 if ((AscGetChipStatus(iop_base) & CSW_HALTED) != 0) {
  return (0);
 }
 return (1);
}
