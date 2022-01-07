
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
typedef int u32 ;
typedef int PortAddr ;


 scalar_t__ AscReadLramWord (int ,int) ;

__attribute__((used)) static u32 AscMemSumLramWord(PortAddr iop_base, ushort s_addr, int words)
{
 u32 sum = 0;
 int i;

 for (i = 0; i < words; i++, s_addr += 2) {
  sum += AscReadLramWord(iop_base, s_addr);
 }
 return (sum);
}
