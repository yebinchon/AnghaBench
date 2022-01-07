
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
typedef int PortAddr ;


 int AscSetChipLramAddr (int ,int ) ;
 int AscSetChipLramData (int ,int ) ;

__attribute__((used)) static void
AscMemWordSetLram(PortAddr iop_base, ushort s_addr, ushort set_wval, int words)
{
 int i;

 AscSetChipLramAddr(iop_base, s_addr);
 for (i = 0; i < words; i++) {
  AscSetChipLramData(iop_base, set_wval);
 }
}
