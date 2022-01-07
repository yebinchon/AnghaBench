
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ushort ;
typedef int uchar ;
typedef int PortAddr ;


 int ASCV_HOST_FLAG_B ;
 int ASCV_RISC_FLAG_B ;
 int ASC_HOST_FLAG_ACK_INT ;
 int ASC_RISC_FLAG_GEN_INT ;
 int AscGetChipStatus (int ) ;
 int AscReadLramByte (int ,int ) ;
 int AscSetChipStatus (int ,int ) ;
 int AscWriteLramByte (int ,int ,int) ;
 int CIW_INT_ACK ;
 int CSW_INT_PENDING ;

__attribute__((used)) static void AscAckInterrupt(PortAddr iop_base)
{
 uchar host_flag;
 uchar risc_flag;
 ushort loop;

 loop = 0;
 do {
  risc_flag = AscReadLramByte(iop_base, ASCV_RISC_FLAG_B);
  if (loop++ > 0x7FFF) {
   break;
  }
 } while ((risc_flag & ASC_RISC_FLAG_GEN_INT) != 0);
 host_flag =
     AscReadLramByte(iop_base,
       ASCV_HOST_FLAG_B) & (~ASC_HOST_FLAG_ACK_INT);
 AscWriteLramByte(iop_base, ASCV_HOST_FLAG_B,
    (uchar)(host_flag | ASC_HOST_FLAG_ACK_INT));
 AscSetChipStatus(iop_base, CIW_INT_ACK);
 loop = 0;
 while (AscGetChipStatus(iop_base) & CSW_INT_PENDING) {
  AscSetChipStatus(iop_base, CIW_INT_ACK);
  if (loop++ > 3) {
   break;
  }
 }
 AscWriteLramByte(iop_base, ASCV_HOST_FLAG_B, host_flag);
}
