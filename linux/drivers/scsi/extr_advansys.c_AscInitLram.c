
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ushort ;
typedef int uchar ;
struct TYPE_3__ {int max_total_qng; int iop_base; } ;
typedef int PortAddr ;
typedef TYPE_1__ ASC_DVC_VAR ;


 int ASC_MIN_ACTIVE_QNO ;
 scalar_t__ ASC_QADR_BEG ;
 scalar_t__ ASC_QBLK_SIZE ;
 scalar_t__ ASC_QLINK_END ;
 scalar_t__ ASC_SCSIQ_B_BWD ;
 scalar_t__ ASC_SCSIQ_B_FWD ;
 scalar_t__ ASC_SCSIQ_B_QNO ;
 int AscMemWordSetLram (int ,scalar_t__,int ,scalar_t__) ;
 int AscWriteLramByte (int ,scalar_t__,int) ;

__attribute__((used)) static void AscInitLram(ASC_DVC_VAR *asc_dvc)
{
 uchar i;
 ushort s_addr;
 PortAddr iop_base;

 iop_base = asc_dvc->iop_base;
 AscMemWordSetLram(iop_base, ASC_QADR_BEG, 0,
     (ushort)(((int)(asc_dvc->max_total_qng + 2 + 1) *
        64) >> 1));
 i = ASC_MIN_ACTIVE_QNO;
 s_addr = ASC_QADR_BEG + ASC_QBLK_SIZE;
 AscWriteLramByte(iop_base, (ushort)(s_addr + ASC_SCSIQ_B_FWD),
    (uchar)(i + 1));
 AscWriteLramByte(iop_base, (ushort)(s_addr + ASC_SCSIQ_B_BWD),
    (uchar)(asc_dvc->max_total_qng));
 AscWriteLramByte(iop_base, (ushort)(s_addr + ASC_SCSIQ_B_QNO),
    (uchar)i);
 i++;
 s_addr += ASC_QBLK_SIZE;
 for (; i < asc_dvc->max_total_qng; i++, s_addr += ASC_QBLK_SIZE) {
  AscWriteLramByte(iop_base, (ushort)(s_addr + ASC_SCSIQ_B_FWD),
     (uchar)(i + 1));
  AscWriteLramByte(iop_base, (ushort)(s_addr + ASC_SCSIQ_B_BWD),
     (uchar)(i - 1));
  AscWriteLramByte(iop_base, (ushort)(s_addr + ASC_SCSIQ_B_QNO),
     (uchar)i);
 }
 AscWriteLramByte(iop_base, (ushort)(s_addr + ASC_SCSIQ_B_FWD),
    (uchar)ASC_QLINK_END);
 AscWriteLramByte(iop_base, (ushort)(s_addr + ASC_SCSIQ_B_BWD),
    (uchar)(asc_dvc->max_total_qng - 1));
 AscWriteLramByte(iop_base, (ushort)(s_addr + ASC_SCSIQ_B_QNO),
    (uchar)asc_dvc->max_total_qng);
 i++;
 s_addr += ASC_QBLK_SIZE;
 for (; i <= (uchar)(asc_dvc->max_total_qng + 3);
      i++, s_addr += ASC_QBLK_SIZE) {
  AscWriteLramByte(iop_base,
     (ushort)(s_addr + (ushort)ASC_SCSIQ_B_FWD), i);
  AscWriteLramByte(iop_base,
     (ushort)(s_addr + (ushort)ASC_SCSIQ_B_BWD), i);
  AscWriteLramByte(iop_base,
     (ushort)(s_addr + (ushort)ASC_SCSIQ_B_QNO), i);
 }
}
