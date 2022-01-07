
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
typedef int PortAddr ;


 int AscGetChipLramData (int ) ;
 int AscSetChipLramAddr (int ,int ) ;

__attribute__((used)) static ushort AscReadLramWord(PortAddr iop_base, ushort addr)
{
 ushort word_data;

 AscSetChipLramAddr(iop_base, addr);
 word_data = AscGetChipLramData(iop_base);
 return (word_data);
}
