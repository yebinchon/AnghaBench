
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
typedef int uchar ;
typedef scalar_t__ PortAddr ;


 int AscSetChipLramAddr (scalar_t__,int) ;
 scalar_t__ IOP_RAM_DATA ;
 int outpw (scalar_t__,int) ;

__attribute__((used)) static void
AscMemDWordCopyPtrToLram(PortAddr iop_base,
    ushort s_addr, uchar *s_buffer, int dwords)
{
 int i;

 AscSetChipLramAddr(iop_base, s_addr);
 for (i = 0; i < 4 * dwords; i += 4) {
  outpw(iop_base + IOP_RAM_DATA, ((ushort)s_buffer[i + 1] << 8) | s_buffer[i]);
  outpw(iop_base + IOP_RAM_DATA, ((ushort)s_buffer[i + 3] << 8) | s_buffer[i + 2]);
 }
}
