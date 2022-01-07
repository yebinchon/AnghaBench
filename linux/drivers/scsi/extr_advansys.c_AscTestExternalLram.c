
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ushort ;
struct TYPE_3__ {int iop_base; } ;
typedef int PortAddr ;
typedef TYPE_1__ ASC_DVC_VAR ;


 int ASC_QNO_TO_QADDR (int) ;
 int AscGetChipLramData (int ) ;
 int AscReadLramWord (int ,int ) ;
 int AscSetChipLramAddr (int ,int ) ;
 int AscSetChipLramData (int ,int) ;
 int AscWriteLramWord (int ,int ,int ) ;
 int mdelay (int) ;

__attribute__((used)) static int AscTestExternalLram(ASC_DVC_VAR *asc_dvc)
{
 PortAddr iop_base;
 ushort q_addr;
 ushort saved_word;
 int sta;

 iop_base = asc_dvc->iop_base;
 sta = 0;
 q_addr = ASC_QNO_TO_QADDR(241);
 saved_word = AscReadLramWord(iop_base, q_addr);
 AscSetChipLramAddr(iop_base, q_addr);
 AscSetChipLramData(iop_base, 0x55AA);
 mdelay(10);
 AscSetChipLramAddr(iop_base, q_addr);
 if (AscGetChipLramData(iop_base) == 0x55AA) {
  sta = 1;
  AscWriteLramWord(iop_base, q_addr, saved_word);
 }
 return (sta);
}
